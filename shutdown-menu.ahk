; ----------------------------------------------------------
; Win Version:     Windows 7+
; AHK Version:     1.1 x64 Unicode
; Author:          xearonet
; Modified:        2026-11-07
; Version:         1.01
; Desc:            Show up Windows shutdown menu
; ----------------------------------------------------------

#Requires AutoHotkey v1.1
SendMode Input
SetWorkingDir %A_ScriptDir%
#Warn
#NoEnv
#SingleInstance Force


^!End::
shell := ComObjCreate("Shell.Application")
shell.ShutdownWindows()
shell := ""
Return
