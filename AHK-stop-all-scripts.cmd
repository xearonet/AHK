@echo off
REM --------------------------------------------------------
REM Author:        xearonet
REM Modified:      2026-11-02
REM Version:       1.01
REM Desc:          Stop all AutoHotKey scripts
REM --------------------------------------------------------

setlocal
set "wtitle=Stop all AutoHotKey scripts"
title %wtitle% & echo %wtitle%
echo.

echo Killed scripts:
taskkill /IM "AutoHotkey*" /F >NUL 2>&1

if errorlevel 1 (
    echo No AutoHotkey processes found.
) else (
    echo Processes terminated.
)

echo Done
timeout /T 2 /nobreak > NUL
