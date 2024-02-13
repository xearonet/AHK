; ----------------------------------------------------------
; Win Version:     Windows 7+
; AHK Version:     1.1 x64 Unicode
; Author:          xearonet
; Modified:        2024-02-11
; Version:         1.00
; Desc:            Remapping some shortcuts in Palworld
; ----------------------------------------------------------

SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#Warn  ; Enable warnings to assist with detecting common errors.
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance Force


#IfWinActive ahk_exe Palworld-Win64-Shipping.exe ; The hotkeys will only work when the game is in focus
e::f
x::e
Capslock::LCtrl
#IfWinActive
