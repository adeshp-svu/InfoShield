# InfoShield - Start Backend Server
# Starts FastAPI server on http://127.0.0.1:8000 with auto-reload

$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$BackendDir = Join-Path (Split-Path -Parent $ScriptDir) "backend"

Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host " Starting InfoShield FastAPI Backend Server" -ForegroundColor Cyan
Write-Host " Directory: $BackendDir" -ForegroundColor Gray
Write-Host " Endpoint : http://127.0.0.1:8000" -ForegroundColor Green
Write-Host " Docs     : http://127.0.0.1:8000/docs" -ForegroundColor Green
Write-Host "==========================================================" -ForegroundColor Cyan

Set-Location -Path $BackendDir
python -m uvicorn api:app --host 127.0.0.1 --port 8000 --reload
