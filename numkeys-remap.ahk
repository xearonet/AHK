; ----------------------------------------------------------
; Author(s):       xearonet
; Win Version:     Windows 7+
; AHK Version:     1.1 x64 Unicode
; Modified:        2023-02-15
; Version:         1.00
; Desc:            Remap the keypad numbers to their equivalents in the top number row
; ----------------------------------------------------------
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#Warn  ; Enable warnings to assist with detecting common errors.
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance Force

; Remap Numpad Keys to their equivalents on top row of keyboard

NumpadEnd::1
NumpadDown::2
NumpadPgDn::3
NumpadLeft::4
NumpadClear::5
NumpadRight::6
NumpadHome::7
NumpadUp::8
NumpadPgUp::9
NumpadIns::0
NumpadDot::.
