@echo off
:: Check if the script is running as administrator
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo Running as administrator required!
    powershell -Command "Start-Process cmd -ArgumentList '/c %~f0' -Verb RunAs"
    exit /b
)

echo Choose an option:
echo 1. Start MySQL80 service
echo 2. Stop MySQL80 service
echo 3. Exit

set /p choice=Enter your choice: 

if "%choice%"=="1" (
    net start MySQL80
    echo MySQL80 service started.
)

if "%choice%"=="2" (
    net stop MySQL80
    echo MySQL80 service stopped.
)

if "%choice%"=="3" (
    exit
)

pause
