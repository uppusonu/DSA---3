@echo off
title Network Flow Optimization Web Dashboard
echo ===================================================================
echo     Launching Network Flow Optimization Web Dashboard (Website)
echo ===================================================================

cd /d "%~dp0"
if not exist "bin" mkdir bin

echo Compiling Java source files...
javac -encoding UTF-8 -d bin src/model/*.java src/algorithms/*.java src/data/*.java src/benchmark/*.java src/web/*.java src/ui/*.java src/Main.java test/*.java

if %ERRORLEVEL% NEQ 0 (
    echo [ERROR] Compilation failed.
    pause
    exit /b %ERRORLEVEL%
)

echo Starting embedded Java server and launching browser...
echo.
java -cp bin Main

pause
