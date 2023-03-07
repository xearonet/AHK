; ----------------------------------------------------------
; Win Version:     Windows 7+
; AHK Version:     1.1 x64 Unicode
; Author:          xearonet
; Modified:        2023-02-15
; Version:         1.00
; Desc:            Control YT globally by custom key
; ----------------------------------------------------------

SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#Warn  ; Enable warnings to assist with detecting common errors.
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance Force


Launch_App2:: ; Replace with your key's value. "Launch_App2" -> "Launch Calculator" key
#HotkeyInterval 200 ; Prevents multiple pressing
Send ^{Media_Play_Pause}
Return
