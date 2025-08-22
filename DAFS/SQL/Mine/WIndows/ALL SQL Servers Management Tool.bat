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

:: Define service names
SET MYSQL_SERVICE=MySQL80
SET ORACLE_SERVICE=OracleServiceORCL
SET POSTGRES_SERVICE=postgresql-x64-17

:: SQL Server (SQLEXPRESS) related services
SET MSSQL_SERVICE=MSSQL$SQLEXPRESS
SET SQL_LAUNCHPAD=MSSQLLaunchpad$SQLEXPRESS
SET SQL_FDLAUNCHER=MSSQLFDLauncher$SQLEXPRESS
SET SQL_TELEMETRY=SQLTELEMETRY$SQLEXPRESS
SET SQL_POLYBASE_ENGINE=SQLPBENGINE$SQLEXPRESS
SET SQL_POLYBASE_DMS=SQLPBDMS$SQLEXPRESS
SET SQL_WRITER=SQLWriter

:: Menu
:MENU
cls
echo ============================================
echo     Server Manager - Batch Utility
echo ============================================
echo 1. Start ALL servers (one by one)
echo 2. Stop ALL servers (one by one)
echo 3. Start MySQL
echo 4. Start Oracle
echo 5. Start PostgreSQL
echo 6. Start SQL Server (SQLEXPRESS)
echo 7. Stop MySQL
echo 8. Stop Oracle
echo 9. Stop PostgreSQL
echo 10. Stop SQL Server (SQLEXPRESS)
echo 0. Exit
echo ============================================
set /p choice=Enter your choice [0-10]:

IF "%choice%"=="1" GOTO START_ALL
IF "%choice%"=="2" GOTO STOP_ALL
IF "%choice%"=="3" call :START_SERVICE "%MYSQL_SERVICE%" & pause & GOTO MENU
IF "%choice%"=="4" call :START_SERVICE "%ORACLE_SERVICE%" & pause & GOTO MENU
IF "%choice%"=="5" call :START_SERVICE "%POSTGRES_SERVICE%" & pause & GOTO MENU
IF "%choice%"=="7" call :STOP_SERVICE "%MYSQL_SERVICE%" & pause & GOTO MENU
IF "%choice%"=="8" call :STOP_SERVICE "%ORACLE_SERVICE%" & pause & GOTO MENU
IF "%choice%"=="9" call :STOP_SERVICE "%POSTGRES_SERVICE%" & pause & GOTO MENU
IF "%choice%"=="6" GOTO START_SQL
IF "%choice%"=="10" GOTO STOP_SQL
IF "%choice%"=="0" EXIT
GOTO MENU

:: Start all services
:START_ALL
call :START_SERVICE "%MYSQL_SERVICE%"
timeout /t 2
call :START_SERVICE "%ORACLE_SERVICE%"
timeout /t 2
call :START_SERVICE "%POSTGRES_SERVICE%"
timeout /t 2
call :START_SERVICE "%MSSQL_SERVICE%"
timeout /t 2
call :START_SERVICE "%SQL_LAUNCHPAD%"
timeout /t 2
call :START_SERVICE "%SQL_FDLAUNCHER%"
timeout /t 2
call :START_SERVICE "%SQL_TELEMETRY%"
timeout /t 2
call :START_SERVICE "%SQL_POLYBASE_ENGINE%"
timeout /t 2
call :START_SERVICE "%SQL_POLYBASE_DMS%"
timeout /t 2
call :START_SERVICE "%SQL_WRITER%"
timeout /t 2
echo All servers attempted to start.
pause
GOTO MENU

:: Stop all services
:STOP_ALL
call :STOP_SERVICE "%MYSQL_SERVICE%"
timeout /t 2
call :STOP_SERVICE "%ORACLE_SERVICE%"
timeout /t 2
call :STOP_SERVICE "%POSTGRES_SERVICE%"
timeout /t 2
call :STOP_SERVICE "%MSSQL_SERVICE%"
timeout /t 2
call :STOP_SERVICE "%SQL_LAUNCHPAD%"
timeout /t 2
call :STOP_SERVICE "%SQL_FDLAUNCHER%"
timeout /t 2
call :STOP_SERVICE "%SQL_TELEMETRY%"
timeout /t 2
call :STOP_SERVICE "%SQL_POLYBASE_ENGINE%"
timeout /t 2
call :STOP_SERVICE "%SQL_POLYBASE_DMS%"
timeout /t 2
call :STOP_SERVICE "%SQL_WRITER%"
timeout /t 2
echo All servers attempted to stop.
pause
GOTO MENU

:: Start SQL Server services only
:START_SQL
call :START_SERVICE "%MSSQL_SERVICE%"
call :START_SERVICE "%SQL_LAUNCHPAD%"
call :START_SERVICE "%SQL_FDLAUNCHER%"
call :START_SERVICE "%SQL_TELEMETRY%"
call :START_SERVICE "%SQL_POLYBASE_ENGINE%"
call :START_SERVICE "%SQL_POLYBASE_DMS%"
call :START_SERVICE "%SQL_WRITER%"
echo SQL Server services attempted to start.
pause
GOTO MENU

:: Stop SQL Server services only
:STOP_SQL
call :STOP_SERVICE "%MSSQL_SERVICE%"
call :STOP_SERVICE "%SQL_LAUNCHPAD%"
call :STOP_SERVICE "%SQL_FDLAUNCHER%"
call :STOP_SERVICE "%SQL_TELEMETRY%"
call :STOP_SERVICE "%SQL_POLYBASE_ENGINE%"
call :STOP_SERVICE "%SQL_POLYBASE_DMS%"
call :STOP_SERVICE "%SQL_WRITER%"
echo SQL Server services attempted to stop.
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
