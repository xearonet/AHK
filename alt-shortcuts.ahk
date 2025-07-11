; ----------------------------------------------------------
; Author(s):       xearonet
; Win Version:     Windows 7+
; AHK Version:     1.1 x64 Unicode
; Modified:        2022-12-27
; Version:         1.00
; Desc:            Send refresh signal to selected apps
; ----------------------------------------------------------

SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#Warn  ; Enable warnings to assist with detecting common errors.
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance Force


; Browsers
browsers := ["chrome.exe", "firefox.exe", "msedge.exe", "brave.exe"]

IsBrowserActive() {
    global browsers
    WinGet, proc, ProcessName, A
    for _, exe in browsers
        if (proc = exe) {
            return true
        }
    return false
}

#If IsBrowserActive()
!r::Send {F5}
#If

; Chrome
#IfWinActive ahk_exe chrome.exe
; !r::MsgBox You pressed Alt-R while Chrome is active
!r::Send {F5}
#IfWinActive

; SourceTree
#IfWinActive ahk_exe SourceTree.exe
!r::Send {F5}
#IfWinActive
