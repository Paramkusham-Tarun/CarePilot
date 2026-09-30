@echo off
setlocal
cd /d %~dp0
where python >nul 2>nul || (echo Python is not installed or not on PATH.&pause&exit /b 1)
if not exist .venv python -m venv .venv
call .venv\Scripts\activate.bat
pip install -r requirements.txt
if not exist .env copy .env.example .env >nul
echo.
echo Starting CarePilot at http://127.0.0.1:8000
echo Keep Ollama running in another terminal.
start http://127.0.0.1:8000
python -m uvicorn backend.main:app --host 127.0.0.1 --port 8000
pause
