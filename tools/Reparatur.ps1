# Reparatur.ps1 - einmalige Reparatur des Packs (Stand 08.10.2026)
#
# Behebt:
#   1. Konfliktmarker in pack\pack.toml (und ggf. index.toml)
#   2. Neun Mods mit dem Dateinamen "download". Fuenf davon standen doppelt
#      im Pack: alter CurseForge-Eintrag plus neuer Direktlink-Eintrag.
#      Der Direktlink wird in den alten Eintrag uebernommen, damit Pfad und
#      Dateiname gleich bleiben und Spieler vorhandene Dateien behalten.
#   3. Tough Expansion doppelt (CurseForge-Original + eigene Version)
# Danach wird der Index mit packwiz refresh neu berechnet und das Pack geprueft.
# Hochgeladen wird nichts - das macht danach Arbeitsablauf.bat.
#
# Ablage: tools\Reparatur.ps1 im Repo, packwiz.exe im Repo-Hauptordner.
# Start im Repo-Hauptordner:
#   powershell -ExecutionPolicy Bypass -File tools\Reparatur.ps1

$repoRoot = Split-Path $PSScriptRoot -Parent
$pack     = Join-Path $repoRoot "pack"
$packwiz  = Join-Path $repoRoot "pack/packwiz.exe"
$utf8     = New-Object System.Text.UTF8Encoding $false

function Write-Step($text) { Write-Host ""; Write-Host "==> $text" -ForegroundColor Cyan }
function Write-Ok($text)   { Write-Host "  OK  $text" -ForegroundColor Green }
function Write-Skip($text) { Write-Host "  --  $text" -ForegroundColor DarkGray }

function Stop-WithError($text) {
    Write-Host ""
    Write-Host "FEHLER: $text" -ForegroundColor Red
    Write-Host ""
    Read-Host "Enter zum Beenden"
    exit 1
}

trap { Stop-WithError $_.Exception.Message }
$ErrorActionPreference = "Stop"

function Read-Text($path)        { return [IO.File]::ReadAllText($path) }
function Get-PackPath($rel)      { return Join-Path $pack ($rel -replace '\\', [IO.Path]::DirectorySeparatorChar) }
function Write-Text($path, $txt) { [IO.File]::WriteAllText($path, $txt, $utf8) }

# Liefert die komplette Zeile "key = ..." aus einer TOML-Datei (oder $null)
function Get-Line($text, $key) {
    $m = [regex]::Match($text, "(?m)^$key = .*?(?=\r?$)")
    if ($m.Success) { return $m.Value }
    return $null
}

# --- Voraussetzungen ---
if (-not (Test-Path (Join-Path $pack "pack.toml"))) { Stop-WithError "pack\pack.toml nicht gefunden. Liegt das Skript in tools\ deines Repos?" }
if (-not (Test-Path $packwiz)) { Stop-WithError "packwiz.exe nicht gefunden in $repoRoot" }
if (-not (Get-Command git -ErrorAction SilentlyContinue)) { Stop-WithError "Git wurde nicht gefunden." }
Set-Location $repoRoot
$Host.UI.RawUI.WindowTitle = "Revelation++ Reparatur"

# --- 0. Git-Stand pruefen und aktualisieren ---
Write-Step "Pruefe Git-Stand..."
$gitDir = git rev-parse --absolute-git-dir
if ((Test-Path (Join-Path $gitDir "MERGE_HEAD")) -or (Test-Path (Join-Path $gitDir "rebase-merge")) -or (Test-Path (Join-Path $gitDir "rebase-apply"))) {
    Stop-WithError "Ein git pull ist noch nicht abgeschlossen. Brich ihn zuerst ab (git merge --abort bzw. git rebase --abort)."
}
git pull --ff-only
if ($LASTEXITCODE -ne 0) { Stop-WithError "git pull fehlgeschlagen - siehe Meldung oben." }

Write-Step "Repariere Dateien..."

# --- 1. Konfliktmarker: erste Variante behalten, den Hash rechnet refresh neu ---
foreach ($name in @("pack.toml", "index.toml")) {
    $p = Join-Path $pack $name
    $lines = [IO.File]::ReadAllLines($p)
    if (-not ($lines | Where-Object { $_.StartsWith("<<<<<<<") })) { Write-Skip "${name} ohne Konfliktmarker"; continue }
    $out = New-Object System.Collections.Generic.List[string]
    $state = 0   # 0 = normal, 1 = erste Variante (behalten), 2 = Basis, 3 = zweite Variante (verwerfen)
    foreach ($l in $lines) {
        if ($l.StartsWith("<<<<<<<"))                   { $state = 1; continue }
        if ($state -eq 1 -and $l.StartsWith("|||||||")) { $state = 2; continue }
        if ($state -ne 0 -and $l -eq "=======")         { $state = 3; continue }
        if ($state -eq 3 -and $l.StartsWith(">>>>>>>")) { $state = 0; continue }
        if ($state -le 1) { $out.Add($l) }
    }
    Write-Text $p (($out -join "`n") + "`n")
    Write-Ok "${name}: Konfliktmarker entfernt"
}

# --- 2a. Direktlink-Eintraege, die nur einen falschen Dateinamen haben ---
$filenames = [ordered]@{
    "mods\decocraft.pw.toml"         = "Decocraft-2.6.3.7_1.12.2.jar"
    "mods\ptrlib.pw.toml"            = "PTRLib-1.0.5.jar"
    "mods\netherending-ores.pw.toml" = "Netherending-Ores-1.12.2-1.4.2.jar"
    "mods\sleepingoverhaul.pw.toml"  = "SleepingOverhaul-1.12.2-1.0.0.jar"
}
foreach ($rel in $filenames.Keys) {
    $p = Get-PackPath $rel
    if (-not (Test-Path $p)) { Stop-WithError "$rel nicht gefunden." }
    $t = Read-Text $p
    if ($t -notmatch '(?m)^filename = "download"\r?$') { Write-Skip "$rel ist bereits in Ordnung"; continue }
    $t = [regex]::Replace($t, '(?m)^filename = "download"(?=\r?$)', ('filename = "' + $filenames[$rel] + '"'))
    Write-Text $p $t
    Write-Ok "$rel -> $($filenames[$rel])"
}

# --- 2b. Doppelte Eintraege: Direktlink in den alten CurseForge-Eintrag uebernehmen ---
$pairs = [ordered]@{
    "mods\craftspeed.pw.toml"                = "mods\immersive-vehicles-craftspeed.pw.toml"
    "mods\generals-general-vehicles.pw.toml" = "mods\kaminari-motor-works.pw.toml"
    "mods\iv-farming.pw.toml"                = "mods\randall-agriculture-pack.pw.toml"
    "mods\agstp.pw.toml"                     = "config\immersiverailroading\autisms-german-steam-train-pack-agstp.pw.toml"
    "mods\friedrichs-modern-stock.pw.toml"   = "config\immersiverailroading\friedrichlps-modern-stock-ir.pw.toml"
}
foreach ($newRel in $pairs.Keys) {
    $oldRel = $pairs[$newRel]
    $newP = Get-PackPath $newRel
    $oldP = Get-PackPath $oldRel
    if (-not (Test-Path $newP)) { Write-Skip "$newRel bereits zusammengefuehrt"; continue }
    if (-not (Test-Path $oldP)) { Stop-WithError "$oldRel nicht gefunden." }
    $old = Read-Text $oldP
    $new = Read-Text $newP
    $lines = @(
        (Get-Line $old "name"), (Get-Line $old "filename"), (Get-Line $old "side"), "",
        "[download]", (Get-Line $new "url"), (Get-Line $new "hash-format"), (Get-Line $new "hash")
    )
    if ($lines -contains $null) { Stop-WithError "Unerwarteter Inhalt in $oldRel oder $newRel." }
    Write-Text $oldP (($lines -join "`n") + "`n")
    Remove-Item $newP
    Write-Ok "$oldRel nutzt jetzt den Direktlink ($newRel entfernt)"
}

# --- 3. Tough Expansion: nur die eigene Version behalten, mit eigenem Namen ---
$teMeta = Get-PackPath "mods\tough-expansion.pw.toml"
if (Test-Path $teMeta) { Remove-Item $teMeta; Write-Ok "mods\tough-expansion.pw.toml (CurseForge-Original) entfernt" }
else { Write-Skip "tough-expansion.pw.toml bereits entfernt" }
$teOld = Get-PackPath "mods\ToughExpansion-1.12-3.4.24.jar"
$teNew = Get-PackPath "mods\ToughExpansion-1.12-3.4.24-revelation.jar"
if (Test-Path $teOld) { Move-Item $teOld $teNew; Write-Ok "Eigene Tough Expansion heisst jetzt ToughExpansion-1.12-3.4.24-revelation.jar" }
else { Write-Skip "Tough-Expansion-Jar bereits umbenannt" }

# --- 4. Index neu berechnen ---
Write-Step "Berechne Index neu (packwiz refresh)..."
Push-Location $pack
& $packwiz refresh
$code = $LASTEXITCODE
Pop-Location
if ($code -ne 0) { Stop-WithError "packwiz refresh fehlgeschlagen - siehe Meldung oben." }

# --- 5. Pruefen: Konfliktmarker, Dateiname "download", doppelte Ziele ---
Write-Step "Pruefe das Pack..."
$problems = 0
$targets = @{}
foreach ($f in Get-ChildItem $pack -Recurse -File) {
    $rel = $f.FullName.Substring($pack.Length + 1)
    if ($rel -in @("pack.toml", "index.toml", ".packwizignore")) { continue }
    $dest = $rel
    if ($f.Name.EndsWith(".pw.toml")) {
        $fn = [regex]::Match((Read-Text $f.FullName), '(?m)^filename = "(.*)"\r?$').Groups[1].Value
        if (-not [IO.Path]::GetExtension($fn)) { Write-Host "  !!  $rel hat keinen richtigen Dateinamen ($fn)" -ForegroundColor Red; $problems++ }
        $parent = Split-Path $rel -Parent
        if ($parent) { $dest = Join-Path $parent $fn } else { $dest = $fn }
    }
    $key = $dest.ToLowerInvariant()
    if ($targets.ContainsKey($key)) { $targets[$key] = @($targets[$key]) + $rel } else { $targets[$key] = @($rel) }
}
foreach ($entry in $targets.GetEnumerator()) {
    if (@($entry.Value).Count -gt 1) { Write-Host "  !!  Gleiches Ziel $($entry.Key): $(@($entry.Value) -join ', ')" -ForegroundColor Red; $problems++ }
}
foreach ($name in @("pack.toml", "index.toml")) {
    if (Select-String -Path (Join-Path $pack $name) -Pattern '^(<<<<<<<|=======$|>>>>>>>)' -Quiet) { Write-Host "  !!  $name enthaelt noch Konfliktmarker" -ForegroundColor Red; $problems++ }
}
if ($problems -eq 0) { Write-Ok "Keine Probleme gefunden" }

Write-Step "Geaenderte Dateien:"
git status --short

Write-Host ""
if ($problems -gt 0) {
    Write-Host "Es sind noch $problems Probleme offen - bitte NICHT hochladen und mir die Meldungen schicken." -ForegroundColor Red
} else {
    Write-Host "Repariert. Hochgeladen ist noch nichts." -ForegroundColor Green
    Write-Host "Starte jetzt Arbeitsablauf.bat, druecke bei 'fertig' direkt Enter und teste mit 'j'."
}
Write-Host ""
Read-Host "Enter zum Beenden"