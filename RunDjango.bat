@echo off
REM Django Project Launcher
REM This script navigates to your Django project directory, activates the virtual environment,
REM starts the Django development server, and opens it in your default browser.

REM ---- CONFIGURATION SECTION (EDIT THESE VARIABLES) ----
SET PROJECT_DIR=C:\Users\rafid\Downloads\project thesis\graph
SET VENV_DIR=venv
SET SERVER_PORT=8000
SET APP_URL=http://127.0.0.1:%SERVER_PORT%

REM ---- EXECUTION SECTION ----
echo Django Project Launcher
echo ------------------------

REM Navigate to project directory
echo Changing to project directory: %PROJECT_DIR%
cd /d "%PROJECT_DIR%"
if %ERRORLEVEL% neq 0 (
    echo Error: Could not navigate to project directory.
    pause
    exit /b 1
)

REM Activate virtual environment
echo Activating virtual environment...
call "C:\Users\rafid\Downloads\project thesis\graph\venv\Scripts\activate.bat"
if %ERRORLEVEL% neq 0 (
    echo Error: Could not activate virtual environment.
    pause
    exit /b 1
)

REM Start Django server
echo Starting Django development server on port %SERVER_PORT%...
start cmd /k "python manage.py runserver %SERVER_PORT%"

REM Wait a few seconds for the server to start
echo Waiting for server to start...
timeout /t 5 /nobreak > nul

REM Open in browser
echo Opening project in your default browser...
start "" "%APP_URL%"

echo Django project is now running!
echo Press any key to close this window (the server will continue running in the other window).
pause > nul