; ----------------------------------------------------------
; Win Version:     Windows 7+
; AHK Version:     1.1 x64 Unicode
; Author:          xearonet
; Modified:        2023-11-21
; Version:         1.00
; Desc:            Remapping "Ctrl + Z" to mouse button 4
; ----------------------------------------------------------

SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#Warn  ; Enable warnings to assist with detecting common errors.
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance Force


#IfWinActive ahk_exe Solitaire.exe ; The hotkeys will only work when the game is in focus
XButton1::^z ; Remapping w to Shift+W for sprint
#IfWinActive
