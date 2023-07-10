; ----------------------------------------------------------
; Win Version:     Windows 7+
; AHK Version:     1.1 x64 Unicode
; Author:          xearonet
; Modified:        2022-11-17
; Version:         1.00
; Desc:            Show up Windows shutdown menu
; ----------------------------------------------------------

SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#Warn  ; Enable warnings to assist with detecting common errors.
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance Force


^!End::  ; Ctrl+Alt+End
Run, mshta vbscript:Execute("dim objShell:set objShell = CreateObject(""shell.application""):objshell.ShutdownWindows:set objShell = nothing:window.close"),, Hide
Sleep, 100
if Not (WinActive("Shut Down Windows") or WinActive("Zamykanie systemu Windows")) {
    WinActivate
}
Return
