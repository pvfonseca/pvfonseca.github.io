# Wrapper that runs this site's pinned Hugo Extended version, downloading it
# on first use so a fresh machine can build the site without manual setup.
#
# Usage: .\scripts\hugo.ps1 server
#        .\scripts\hugo.ps1 --minify
#
# IMPORTANT: keep $HugoVersion in sync with netlify.toml (HUGO_VERSION) and
# .github/workflows/gh-pages.yml (hugo-version). Newer Hugo releases removed
# template functions (e.g. getCSV) that this site's theme still relies on,
# so do not bump this to 'latest'.

$ErrorActionPreference = "Stop"
$HugoVersion = "0.108.0"

$RepoRoot = Split-Path -Parent $PSScriptRoot
$BinDir = Join-Path $RepoRoot ".hugo-bin"
$HugoExe = Join-Path $BinDir "hugo.exe"

if (-not (Get-Command go -ErrorAction SilentlyContinue)) {
    Write-Warning "Go was not found on PATH. This theme fetches its modules via Hugo Modules, which requires Go."
    Write-Warning "Install it first, e.g.: winget install --id GoLang.Go"
    exit 1
}

if (-not (Test-Path $HugoExe)) {
    Write-Host "Hugo Extended $HugoVersion not found locally. Downloading..."
    New-Item -ItemType Directory -Force -Path $BinDir | Out-Null
    $zipUrl = "https://github.com/gohugoio/hugo/releases/download/v$HugoVersion/hugo_extended_${HugoVersion}_windows-amd64.zip"
    $zipPath = Join-Path $BinDir "hugo.zip"
    Invoke-WebRequest -Uri $zipUrl -OutFile $zipPath
    Expand-Archive -Path $zipPath -DestinationPath $BinDir -Force
    Remove-Item $zipPath
    Write-Host "Hugo Extended $HugoVersion installed at $HugoExe"
}

& $HugoExe @args
exit $LASTEXITCODE
