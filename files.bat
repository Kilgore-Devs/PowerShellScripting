@echo off
setlocal

REM Check if two arguments are provided
if "%~2"=="" (
    echo Usage: %0 "folder_path" "filename"
    exit /b 1
)

REM Set folder and file variables
set "folder=%~1"
set "filename=%~2"
set "filepath=%folder%\%filename%"

REM Check if the folder exists, and create it if not
if not exist "%folder%" (
    mkdir "%folder%"
    echo Folder "%folder%" created.
)

REM Create the file
if not exist "%filepath%" (
    copy nul "%filepath%"
    echo File "%filename%" created.
)

REM Append a list of processes to the file
echo List of Processes: >> "%filepath%"
tasklist >> "%filepath%"

REM Append a list of TCP/IP network connections to the file
echo. >> "%filepath%"
echo List of TCP/IP Network Connections: >> "%filepath%"
netstat -ano >> "%filepath%"

echo Data written to "%filename%" in folder "%folder%."

endlocal