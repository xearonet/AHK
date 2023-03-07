; ----------------------------------------------------------
; Win Version:     Windows 7+
; AHK Version:     1.1 x64 Unicode
; Author:          xearonet
; Modified:        2022-11-17
; Version:         1.01
; Desc:            Start programs using WIN key shortcuts
; ----------------------------------------------------------

SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#Warn  ; Enable warnings to assist with detecting common errors.
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance Force


; Win + W - start Chrome
$#w:: 
Run, chrome.exe
WinWaitActive, ahk_class Chrome_WidgetWin_0,, 2
Return

; Win + Shift + W - start Chrome in Incognito mode
$#+w:: 
Run, chrome.exe --incognito
WinWaitActive, ahk_class Chrome_WidgetWin_0,, 2
Return

; Win + C - start Calculator
$#c:: 
Run, calc.exe
Return
