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
