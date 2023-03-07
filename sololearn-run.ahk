; ----------------------------------------------------------
; Win Version:     Windows 7+
; AHK Version:     1.1 x64 Unicode
; Author:          xearonet
; Modified:        2023-03-01
; Version:         2.00
; Desc:            Click "RUN" button on sololearn.com playground page
; ----------------------------------------------------------

SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#Warn  ; Enable warnings to assist with detecting common errors.
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance Force
SetTitleMatchMode, 2


$F9:: 
If WinExist("Playground") {
    If WinActive("Playground") {
        MouseGetPos, xpos, ypos
        MouseClick, left, 1760, 140, , 0
        MouseMove, xpos, ypos, 0
        Sleep, 1000
        MouseClick, left, , , , 0
    }
}

; different implementation - doesn't move cursor, doesn't interrupt user movement
; $F9:: 
; If WinExist("Playground") {
;     If WinActive("Playground") {
;         SetControlDelay -1
;         MouseGetPos, xpos, ypos
;         ControlClick, x1760 y140,,,,, NA
;         MouseMove, xpos, ypos, 0
;         Sleep, 1000
;         MouseClick, left, , , , 0
;     }
; }

Return
