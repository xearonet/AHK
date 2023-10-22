@echo off
REM --------------------------------------------------------
REM Author:        xearonet
REM Modified:      2023-03-03
REM Version:       2.00
REM Desc:          Start AutoHotKey scripts
REM --------------------------------------------------------

REM cls
setlocal
set title=Start AutoHotKey scripts
title %title% & echo %title%
echo.

set ahk_binary="C:\Program Files\AutoHotkey\AutoHotkeyU64.exe"
set "logfile=%~dp0log.txt"

echo %DATE% %TIME% > %logfile%
echo ------------------------- >> %logfile%

echo Loaded scripts: >> %logfile%
echo Loaded scripts:
for %%f in (%~dp0Enabled\*.ahk) do (
    echo     ^-^> %%~nxf >> %logfile%
    echo     ^-^> %%~nxf
    start "" /B %ahk_binary% "%%f"
)
echo Done >> %logfile%
echo Done
timeout /T 1 /nobreak > NUL
