; ----------------------------------------------------------
; Win Version:     Windows 7+
; AHK Version:     1.1 x64 Unicode
; Author:          xearonet
; Modified:        2022-11-17
; Version:         1.00
; Desc:            Starts the screensaver immediately
; ----------------------------------------------------------

SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#Warn  ; Enable warnings to assist with detecting common errors.
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance Force


SendMessage, 0x112, 0xF140, 0,, Program Manager
