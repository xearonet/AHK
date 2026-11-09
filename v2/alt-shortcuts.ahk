; ----------------------------------------------------------
; Author(s):       xearonet
; Win Version:     Windows 10+
; AHK Version:     2
; Modified:        2026-07-14
; Desc:            ALT shortcuts for various apps
; ----------------------------------------------------------

#Requires AutoHotkey v2.0
#Warn All

#SingleInstance Force
SetWorkingDir(A_ScriptDir)

; Browsers - Send refresh signal to selected apps
#HotIf RegExMatch(
    StrLower(WinGetProcessName("A")),
    "^(chrome|msedge|brave|firefox)\.exe$"
)
!r::Send("^r")
#HotIf

; SourceTree
#HotIf StrLower(WinGetProcessName("A")) = "SourceTree.exe"
!r::
{
    Send("{F5}")
}
#HotIf
