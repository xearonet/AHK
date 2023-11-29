; ----------------------------------------------------------
; Win Version:     Windows 7+
; AHK Version:     1.1 x64 Unicode
; Author:          xearonet
; Modified:        2023-10-22
; Version:         1.00
; Desc:            Activate selected cheats in GTA 5
; ----------------------------------------------------------

SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#Warn  ; Enable warnings to assist with detecting common errors.
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance Force


#IfWinActive AHK_exe GTA5.exe ; The hotkeys will only work when the game is in focus

F1::
    Send {``}
    Sleep 10
    Send CATCHME
    Send {Enter}

    Sleep 100
    Send {``}
    Sleep 10
    Send HOPTOIT
    Send {Enter}

    Sleep 100
    Send {``}
    Sleep 10
    Send TOOLUP
    Send {Enter}

    Sleep 100
    Send {``}
    Sleep 10
    Send DEADEYE
    Send {Enter}
    Sleep 100
    Send {``}
    Sleep 10
    Send DEADEYE
    Send {Enter}
    Sleep 100
    Send {``}
    Sleep 10
    Send DEADEYE
    Send {Enter}
Return

F2::
    Send {``}
    Sleep 10
    Send PAINKILLER
    Send {Enter}
Return

F3::
    Loop, 3
    {
        Sleep 100
        Send {``}
        Sleep 10
        Send TOOLUP
        Send {Enter}
    }
Return

#IfWinActive
