@echo off
REM --------------------------------------------------------
REM Author:        xearonet
REM Modified:      2023-09-22
REM Version:       1.00
REM Desc:          Stop all AutoHotKey scripts
REM --------------------------------------------------------

REM cls
setlocal
set title=Stop all AutoHotKey scripts
title %title% & echo %title%
echo.

echo Killed scripts:
taskkill /IM "AutoHotkey*" /F >NUL 2>&1

if %errorlevel%==0 (
    echo Processes terminated.
) else (
    echo No AutoHotkey processes found.
)

echo Done
timeout /T 2 /nobreak > NUL
