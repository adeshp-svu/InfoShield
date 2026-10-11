param(
    [int]$Port = 5500
)

# InfoShield - Start Frontend Web Server
# Serves static frontend on http://127.0.0.1:$Port

$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$FrontendDir = Join-Path (Split-Path -Parent $ScriptDir) "frontend"

Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host " Starting InfoShield Frontend HTTP Server" -ForegroundColor Cyan
Write-Host " Directory: $FrontendDir" -ForegroundColor Gray
Write-Host " UI URL   : http://127.0.0.1:$Port" -ForegroundColor Green
Write-Host "==========================================================" -ForegroundColor Cyan

python -m http.server $Port --directory $FrontendDir
