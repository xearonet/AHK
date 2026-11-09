@echo off
REM --------------------------------------------------------
REM Author:        xearonet
REM Modified:      2026-11-02
REM Version:       3.00
REM Desc:          Start AutoHotKey scripts
REM --------------------------------------------------------

setlocal
set "title=Start AutoHotKey scripts"
set "logfile=%~dp0log.txt"

title %title% & echo %title%
echo.

echo %DATE% %TIME% > "%logfile%"
echo ------------------------- >> "%logfile%"

echo Loaded scripts: >> "%logfile%"
echo Loaded scripts:

for %%F in ("%~dp0Enabled\*.ahk") do (
    echo     ^-^> %%~nxF >> "%logfile%"
    echo     ^-^> %%~nxF
    start "" "%%F"
)

echo Done >> "%logfile%"
echo Done

timeout /T 1 /nobreak > NUL
