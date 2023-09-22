; ----------------------------------------------------------
; Win Version:     Windows 7+
; AHK Version:     1.1 x64 Unicode
; Author:          xearonet
; Modified:        2023-09-22
; Version:         2.00
; Desc:            Bunch of miscellaneous shortcuts
; ----------------------------------------------------------

SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#Warn  ; Enable warnings to assist with detecting common errors.
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance Force


; RAlt + m - send eñe
RAlt & m:: ; RAlt + m
Send {U+00F1} ; eñe
Return


; Esc + End - send Enter
Esc & End:: ; Esc + End
Send {Enter}
Return
