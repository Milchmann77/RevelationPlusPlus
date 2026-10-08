# Arbeitsablauf.ps1
# Fuehrt den kompletten Ablauf fuer Pack-Aenderungen aus:
#   1. git pull
#   2. Warten, bis du deine Aenderungen gemacht hast
#   3. packwiz refresh (optional mit Testserver)
#   4. Commit-Nachricht abfragen, committen, pushen
#   5. Optional: Release-Workflow starten
#
# Ablage: tools\Arbeitsablauf.ps1 im Repo. packwiz.exe liegt im Repo-Hauptordner.
# Start per Doppelklick ueber Arbeitsablauf.bat im Repo-Hauptordner.

$repoRoot = Split-Path $PSScriptRoot -Parent
$packDir  = Join-Path $repoRoot "pack"
$packwiz  = Join-Path $repoRoot "packwiz.exe"

function Write-Step($text) {
    Write-Host ""
    Write-Host "==> $text" -ForegroundColor Cyan
}

function Stop-WithError($text) {
    Write-Host ""
    Write-Host "FEHLER: $text" -ForegroundColor Red
    Write-Host ""
    Read-Host "Enter zum Beenden"
    exit 1
}

function Ask-YesNo($question) {
    $answer = Read-Host "$question (j/n)"
    return ($answer -match '^(j|ja|y|yes)$')
}

# --- Voraussetzungen ---
if (-not (Get-Command git -ErrorAction SilentlyContinue)) { Stop-WithError "Git wurde nicht gefunden." }
if (-not (Test-Path $packwiz)) { Stop-WithError "packwiz.exe nicht gefunden in $repoRoot" }
if (-not (Test-Path (Join-Path $packDir "pack.toml"))) { Stop-WithError "Keine pack.toml in $packDir" }

Set-Location $repoRoot
$Host.UI.RawUI.WindowTitle = "Revelation++ Arbeitsablauf"

# GitHub-Repo aus der Remote-Adresse ermitteln (fuer Links und Release)
$remote = git remote get-url origin
$repoSlug = ""
if ($remote -match 'github\.com[:/](.+?)(\.git)?$') { $repoSlug = $Matches[1] }

# --- 1. Neuesten Stand holen ---
Write-Step "Hole neuesten Stand von GitHub (git pull)..."
git pull --rebase --autostash
if ($LASTEXITCODE -ne 0) {
    Stop-WithError "git pull fehlgeschlagen. Bitte die Meldung oben pruefen."
}

# --- 2. Auf Aenderungen warten ---
Write-Step "Du kannst jetzt deine Aenderungen machen."
Write-Host "    Pack-Ordner: $packDir"
Write-Host ""
Read-Host "Druecke Enter, wenn du fertig bist"

# --- 3. Index aktualisieren ---
Write-Step "Aktualisiere packwiz-Index..."
Push-Location $packDir
& $packwiz refresh
$refreshCode = $LASTEXITCODE
Pop-Location
if ($refreshCode -ne 0) { Stop-WithError "packwiz refresh fehlgeschlagen." }

if (Ask-YesNo "Vor dem Hochladen mit dem Testserver ausprobieren?") {
    Write-Host ""
    Write-Host "    Testserver laeuft in einem eigenen Fenster."
    Write-Host "    Test-Instanz mit http://localhost:8080/pack.toml starten."
    $server = Start-Process -FilePath $packwiz -ArgumentList "serve" -WorkingDirectory $packDir -PassThru
    Read-Host "Druecke Enter, wenn der Test fertig ist"
    if (-not $server.HasExited) { Stop-Process -Id $server.Id -Force }

    if (-not (Ask-YesNo "Hat alles funktioniert und soll hochgeladen werden?")) {
        Write-Host ""
        Write-Host "Abgebrochen. Deine Aenderungen bleiben lokal erhalten." -ForegroundColor Yellow
        Read-Host "Enter zum Beenden"
        exit 0
    }

    Push-Location $packDir
    & $packwiz refresh
    Pop-Location
}

# --- 4. Aenderungen anzeigen ---
$changes = @(git status --porcelain)
if ($changes.Count -eq 0) {
    Write-Host ""
    Write-Host "Keine Aenderungen gefunden - es gibt nichts hochzuladen." -ForegroundColor Yellow
    Read-Host "Enter zum Beenden"
    exit 0
}

Write-Step "Folgende Dateien haben sich geaendert ($($changes.Count)):"
git status --short

# --- 5. Commit und Push ---
Write-Host ""
$message = ""
while (-not $message.Trim()) {
    $message = Read-Host "Commit-Nachricht (was hast du geaendert?)"
}

Write-Step "Committe und lade hoch..."
git add -A
git commit -m $message
if ($LASTEXITCODE -ne 0) { Stop-WithError "git commit fehlgeschlagen." }

git push
if ($LASTEXITCODE -ne 0) {
    Write-Host ""
    Write-Host "Push abgelehnt - vermutlich gibt es neue Aenderungen auf GitHub. Hole sie nach..." -ForegroundColor Yellow
    git pull --rebase
    if ($LASTEXITCODE -ne 0) {
        # Typischer Fall: Ein Release hat Version und Index geaendert, du auch.
        # Betrifft der Konflikt nur pack.toml/index.toml, wird der Index einfach neu berechnet.
        $conflicts = @(git diff --name-only --diff-filter=U)
        $onlyIndex = ($conflicts.Count -gt 0) -and -not ($conflicts | Where-Object { $_ -notin @("pack/pack.toml", "pack/index.toml") })
        if ($onlyIndex) {
            Write-Host "Index-Konflikt mit dem letzten Release - berechne Index neu..." -ForegroundColor Yellow
            git checkout --ours -- $conflicts
            Push-Location $packDir
            & $packwiz refresh
            Pop-Location
            git add -A
            git -c core.editor=true rebase --continue
        }
        if ($LASTEXITCODE -ne 0) {
            git rebase --abort 2>$null
            Stop-WithError "Deine Aenderungen kollidieren mit denen auf GitHub. Dein Commit ist lokal gespeichert, bitte manuell zusammenfuehren."
        }
    }
    git push
    if ($LASTEXITCODE -ne 0) { Stop-WithError "git push fehlgeschlagen. Bitte die Meldung oben pruefen." }
}

Write-Host ""
Write-Host "Hochgeladen! Spieler bekommen die Aenderungen beim naechsten Start." -ForegroundColor Green

# --- 6. Optional: Release starten ---
Write-Host ""
if ($repoSlug -and (Ask-YesNo "Jetzt ein Release mit Discord-Nachricht erstellen?")) {
    $gh = Get-Command gh -ErrorAction SilentlyContinue
    $ghReady = $false
    if ($gh) {
        gh auth status *> $null
        $ghReady = ($LASTEXITCODE -eq 0)
    }

    if ($ghReady) {
        $notes = Read-Host "Was ist neu? (fuer Release und Discord, leer lassen fuer keinen Text)"
        $ping = "false"
        if (Ask-YesNo "@everyone im Discord benachrichtigen?") { $ping = "true" }
        gh workflow run release.yml --repo $repoSlug -f "notes=$notes" -f "ping=$ping"
        if ($LASTEXITCODE -eq 0) {
            Write-Host ""
            Write-Host "Release gestartet. Fortschritt: https://github.com/$repoSlug/actions" -ForegroundColor Green
        } else {
            Write-Host "Start ueber gh fehlgeschlagen - oeffne die Seite im Browser." -ForegroundColor Yellow
            Start-Process "https://github.com/$repoSlug/actions/workflows/release.yml"
        }
    } else {
        Write-Host "    Oeffne die Release-Seite im Browser - dort auf 'Run workflow' klicken."
        Start-Process "https://github.com/$repoSlug/actions/workflows/release.yml"
    }
}

Write-Host ""
Read-Host "Fertig. Enter zum Beenden"
