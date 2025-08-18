@echo off
SETLOCAL ENABLEEXTENSIONS
SETLOCAL ENABLEDELAYEDEXPANSION

:: Check for admin privileges
NET SESSION >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    echo Requesting administrative privileges...
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

:: Define actual service names
SET MYSQL_SERVICE=MySQL80
SET ORACLE_SERVICE=OracleServiceORCL
SET POSTGRES_SERVICE=postgresql-x64-17

:: Menu
:MENU
cls
echo ============================================
echo     SQL Server Manager - Batch Utility
echo ============================================
echo 1. Start ALL servers (one by one)
echo 2. Stop ALL servers one by one
echo 3. Start MySQL
echo 4. Start Oracle
echo 5. Start PostgreSQL
echo 6. Stop MySQL
echo 7. Stop Oracle
echo 8. Stop PostgreSQL
echo 0. Exit
echo ============================================
set /p choice=Enter your choice [0-8]:

IF "%choice%"=="1" GOTO START_ALL
IF "%choice%"=="2" GOTO STOP_ONE_BY_ONE
IF "%choice%"=="3" call :START_SERVICE "%MYSQL_SERVICE%" & pause & GOTO MENU
IF "%choice%"=="6" call :STOP_SERVICE "%MYSQL_SERVICE%" & pause & GOTO MENU
IF "%choice%"=="4" call :START_SERVICE "%ORACLE_SERVICE%" & pause & GOTO MENU
IF "%choice%"=="7" call :STOP_SERVICE "%ORACLE_SERVICE%" & pause & GOTO MENU
IF "%choice%"=="5" call :START_SERVICE "%POSTGRES_SERVICE%" & pause & GOTO MENU
IF "%choice%"=="8" call :STOP_SERVICE "%POSTGRES_SERVICE%" & pause & GOTO MENU
IF "%choice%"=="0" EXIT
GOTO MENU

:START_ALL
call :START_SERVICE "%MYSQL_SERVICE%"
timeout /t 2
call :START_SERVICE "%ORACLE_SERVICE%"
timeout /t 2
call :START_SERVICE "%POSTGRES_SERVICE%"
timeout /t 2
echo All servers attempted to start.
pause
GOTO MENU

:STOP_ONE_BY_ONE
call :STOP_SERVICE "%MYSQL_SERVICE%"
timeout /t 2
call :STOP_SERVICE "%ORACLE_SERVICE%"
timeout /t 2
call :STOP_SERVICE "%POSTGRES_SERVICE%"
timeout /t 2
echo Servers attempted to stop one by one.
pause
GOTO MENU

:: Function to start a service
:START_SERVICE
set "SERVICE=%~1"
sc query "%SERVICE%" >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    echo [!] Service "%SERVICE%" not found.
) ELSE (
    echo Starting "%SERVICE%"...
    net start "%SERVICE%"
)
GOTO :EOF

:: Function to stop a service
:STOP_SERVICE
set "SERVICE=%~1"
sc query "%SERVICE%" >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    echo [!] Service "%SERVICE%" not found.
) ELSE (
    echo Stopping "%SERVICE%"...
    net stop "%SERVICE%" /y
)
GOTO :EOF
