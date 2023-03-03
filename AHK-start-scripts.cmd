@echo off
REM --------------------------------------------------------
REM Author:     xearonet
REM Modified:   03.03.2023
REM Version:    2.0
REM Desc:       Start AutoHotKey scripts
REM --------------------------------------------------------

cls
setlocal
set title=Start AutoHotKey scripts
title %title% & echo %title%
echo.

set "ahk_binary=C:\Portable\AutoHotkey_1.1.35.00\AutoHotkeyU64.exe"
set "logfile=%~dp0\log.txt"

echo %DATE% %TIME% > %logfile%
echo ------------------------- >> %logfile%

echo Loaded scripts: >> %logfile%
echo Loaded scripts:
for %%f in (Enabled\*.ahk) do (
    echo     ^-^> %%~nxf >> %logfile%
    echo     ^-^> %%~nxf
    start "" /B %ahk_binary% "%%f"
)
echo Done >> %logfile%
echo Done
