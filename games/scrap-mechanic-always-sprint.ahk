; ----------------------------------------------------------
; Win Version:     Windows 7+
; AHK Version:     1.1 x64 Unicode
; Author:          xearonet
; Modified:        2022-11-17
; Version:         1.00
; Desc:            Remapping "W" to Shift+w for always sprint in Scrap Mechanic
; ----------------------------------------------------------

SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#Warn  ; Enable warnings to assist with detecting common errors.
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance Force


#IfWinActive AHK_exe ScrapMechanic.exe ; The hotkeys will only work when the game is in focus
~w::LShift ; Remapping w to Shift+W for sprint
#IfWinActive
