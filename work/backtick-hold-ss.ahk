; ----------------------------------------------------------
; Author(s):       xearonet
; Win Version:     Windows 7+
; AHK Version:     2.0
; Modified:        2026-11-04
; Version:         1.03
; Desc:            PrintScreen on long backtick press
; ----------------------------------------------------------

#Requires AutoHotkey v2.0
#Warn All
#SingleInstance Force
SetWorkingDir A_ScriptDir


$`::
{
    if KeyWait("``", "T0.5")
    {
        Send("``")
    }
    else
    {
        Send("{PrintScreen}")
        KeyWait("``")
    }
}
