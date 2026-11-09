@echo off
REM --------------------------------------------------------
REM Author:        xearonet
REM Modified:      2026-11-07
REM Version:       1.00
REM Desc:          Sync AutoHotKey scripts
REM --------------------------------------------------------

setlocal
set "title=Sync AutoHotKey scripts"

title %title% & echo %title%
echo.

echo Synced scripts:

for %%F in (Enabled\*.ahk) do (
    if exist "%%F" (
        fc /b "%%F" "%%~nxF" >NUL 2>&1
        if not errorlevel 1 (
            rem Pliki identyczne lub błąd – bez kopiowania
        ) else (
            if exist "%%~nxF" (
                copy /Y "%%~nxF" "%%F" >NUL 2>&1
                echo     ^-^> %%~nxF
            )
        )
    )
)

echo Done
timeout /T 1 /nobreak > NUL
