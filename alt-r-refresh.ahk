; ----------------------------------------------------------
; Author(s):       xearonet
; Win Version:     Windows 7+
; AHK Version:     1.1 x64 Unicode
; Modified:        2022.12.27
; Version:         1.00
; Desc:            Send refresh signal to selected apps
; ----------------------------------------------------------
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#Warn  ; Enable warnings to assist with detecting common errors.
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance Force


; Chrome
#IfWinActive ahk_exe chrome.exe
; !r::MsgBox You pressed Alt-R while Chrome is active.  ; This hotkey will have no effect if pressed in other windows (and it will "pass through").
!r::Send {F5}
#IfWinActive

; SourceTree
#IfWinActive ahk_exe SourceTree.exe
!r::Send {F5}
#IfWinActive
