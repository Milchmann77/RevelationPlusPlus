\xEF\xBB\xBF<#
    ModlisteZuPackwiz.ps1
    Wandelt die bisherige modpack_files.txt in ein packwiz-Pack um.

    Aufruf im Pack-Ordner (dort, wo "packwiz init" ausgeführt wurde):
        powershell -ExecutionPolicy Bypass -File ModlisteZuPackwiz.ps1 -Liste ..\modpack_files.txt

    - CurseForge-Links  -> packwiz curseforge add (mit fester Datei-ID, ohne Abhängigkeiten)
    - Andere Mod-Links  -> packwiz url add
    - Sonstige Dateien  -> werden direkt heruntergeladen und von packwiz mit indiziert
    Landet eine .pw.toml im falschen Ordner (z. B. config\immersiverailroading),
    wird sie automatisch dorthin verschoben.
#>
param(
    [string]$Liste   = "..\modpack_files.txt",
    [string]$Packwiz = "",
    [string]$Praefix = "minecraft\"
)

$ErrorActionPreference = "Stop"

# --- Voraussetzungen ---
if (-not (Test-Path "pack.toml")) {
    throw "Keine pack.toml gefunden. Bitte im Pack-Ordner ausführen (vorher 'packwiz init')."
}
if (-not $Packwiz) {
    if (Test-Path ".\packwiz.exe") { $Packwiz = (Resolve-Path ".\packwiz.exe").Path }
    else { $Packwiz = "packwiz" }
}
if (-not (Get-Command $Packwiz -ErrorAction SilentlyContinue)) {
    throw "packwiz nicht gefunden. packwiz.exe in diesen Ordner legen oder -Packwiz <Pfad> angeben."
}
if (-not (Test-Path $Liste)) { throw "Liste nicht gefunden: $Liste" }

$packRoot = (Get-Location).Path
$fehler   = New-Object System.Collections.Generic.List[string]
$hinweise = New-Object System.Collections.Generic.List[string]

function Get-MetaFiles {
    Get-ChildItem -Path $packRoot -Recurse -Filter *.pw.toml -File | ForEach-Object { $_.FullName }
}

function Move-NewMeta($vorher, $ordner) {
    $neu = @(Get-MetaFiles | Where-Object { $vorher -notcontains $_ })
    if ($neu.Count -eq 0) { return $false }
    $zielOrdner = Join-Path $packRoot ($ordner -replace '/', '\')
    foreach ($f in $neu) {
        $istOrdner = Split-Path $f -Parent
        if ($istOrdner -ne $zielOrdner) {
            New-Item -ItemType Directory -Force -Path $zielOrdner | Out-Null
            Move-Item -Force $f (Join-Path $zielOrdner (Split-Path $f -Leaf))
        }
    }
    return $true
}

# --- Liste einlesen ---
$zeilen = @(Get-Content $Liste -Encoding UTF8 | Where-Object {
    $_.Trim() -and -not $_.TrimStart().StartsWith("#")
})
$gesamt = $zeilen.Count
$i = 0

foreach ($zeile in $zeilen) {
    $i++
    if ($zeile -notmatch '^\s*"([^"]+)"\s+"([^"]+)"') {
        $fehler.Add("Unlesbare Zeile: $zeile"); continue
    }
    $url  = $Matches[1]
    $ziel = $Matches[2]

    if ($ziel.StartsWith($Praefix, [StringComparison]::OrdinalIgnoreCase)) {
        $ziel = $ziel.Substring($Praefix.Length)
    }
    $ziel   = $ziel -replace '\\', '/'
    $pos    = $ziel.LastIndexOf('/')
    $ordner = if ($pos -ge 0) { $ziel.Substring(0, $pos) } else { "" }
    $datei  = $ziel.Substring($pos + 1)
    $name   = [IO.Path]::GetFileNameWithoutExtension($datei)

    Write-Host ("[{0,3}/{1}] {2}" -f $i, $gesamt, $ziel)

    # --- Dateien im Wurzelordner (z. B. icon.png): direkt herunterladen ---
    if (-not $ordner) {
        try {
            Invoke-WebRequest -UseBasicParsing -Uri $url -OutFile (Join-Path $packRoot $datei)
        } catch { $fehler.Add("Download fehlgeschlagen: $ziel ($url)") }
        continue
    }

    $vorher = @(Get-MetaFiles)

    if ($url -match 'curseforge\.com/api/v1/mods/(\d+)/files/(\d+)/download') {
        # Abhängigkeits-Abfragen mit "n" beantworten - die Liste ist bereits vollständig
        $ausgabe = "n`nn`nn`n" | & $Packwiz curseforge add --addon-id $Matches[1] --file-id $Matches[2] 2>&1 | Out-String
    }
    else {
        $extra = @()
        if ($url -match 'forgecdn\.net') { $extra += '--force' }
        $ausgabe = & $Packwiz url add $name $url @extra 2>&1 | Out-String
    }

    $angelegt = Move-NewMeta $vorher $ordner
    if (-not $angelegt) {
        if ($ausgabe -match 'already') { $hinweise.Add("Bereits vorhanden: $ziel") }
        else { $fehler.Add("$ziel`n      $url`n      $($ausgabe.Trim())") }
    }
}

# --- Index aktualisieren ---
Write-Host "`nAktualisiere Index..."
& $Packwiz refresh

# --- Bericht ---
$bericht = Join-Path $packRoot "umwandlung-bericht.txt"
@(
    "Umwandlung $(Get-Date)"
    "Einträge: $gesamt   Fehler: $($fehler.Count)   Hinweise: $($hinweise.Count)"
    ""
    "== Fehler =="
    $fehler
    ""
    "== Hinweise =="
    $hinweise
) | Set-Content -Encoding UTF8 $bericht

Write-Host ""
Write-Host "Fertig. Fehler: $($fehler.Count), Hinweise: $($hinweise.Count)"
Write-Host "Bericht: $bericht"
