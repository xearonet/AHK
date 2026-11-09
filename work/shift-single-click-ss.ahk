; ----------------------------------------------------------
; Author(s):       xearonet
; Win Version:     Windows 7+
; AHK Version:     2.0
; Modified:        2022-12-27
; Version:         1.01
; Desc:            Send refresh signal to selected apps
; ----------------------------------------------------------

#Requires AutoHotkey v2.0
#Warn All
#SingleInstance Force
SetWorkingDir A_ScriptDir


~RShift::
{
    startTime := A_TickCount

    KeyWait("RShift")

    if (A_PriorKey = "RShift" && A_TickCount - startTime < 200)
        Send("{PrintScreen}")
}
