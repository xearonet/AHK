; ----------------------------------------------------------
; Win Version:     Windows 7+
; AHK Version:     1.1 x64 Unicode
; Author:          xearonet
; Modified:        2023-10-22
; Version:         1.00
; Desc:            Helldivers 2 helper 
; ----------------------------------------------------------

#NoEnv
SendMode Input
SetBatchLines -1
CoordMode, Pixel, Screen
CoordMode, Mouse, Screen
CoordMode, Tooltip, Screen
SetWorkingDir %A_ScriptDir%
SetKeyDelay, 40, 40
SetMouseDelay, 40
#SingleInstance force
#Persistent
SetTitleMatchMode, RegEx

; Menu, Tray, Icon, C:\Users\xearonet\Downloads\hd2.ico , 1 , 1
; Menu, Tray, NoStandard
; Menu, Tray, Add, Exit Program, CloseProg

;################################################
;################################################

;87 / 17 W
;65 / 30 A
;83 / 31 S
;68 / 32 D

;Autocannon Sentry - SWDWAW
;Eagle Strafing Run - WDD
;Orbital Precision Strike - DDW
;Orbital Laser - DSWDS

F1::
;Reinforcement - WSDAW
dllcall("keybd_event", int, 162, int, 29, int, 0, int, 0)  ;CTRL DOWN
Sleep, 500
dllcall("keybd_event", int, 87, int, 17, int, 0, int, 0) ;W
Sleep, 50
dllcall("keybd_event", int, 87, int, 17, int, 2, int, 0)
Sleep, 50
dllcall("keybd_event", int, 83, int, 31, int, 0, int, 0) ;S
Sleep, 50
dllcall("keybd_event", int, 83, int, 31, int, 2, int, 0)
Sleep, 50
dllcall("keybd_event", int, 68, int, 32, int, 0, int, 0) ;D
Sleep, 50
dllcall("keybd_event", int, 68, int, 32, int, 2, int, 0)
Sleep, 50
dllcall("keybd_event", int, 65, int, 30, int, 0, int, 0) ;A
Sleep, 50
dllcall("keybd_event", int, 65, int, 30, int, 2, int, 0)
Sleep, 50
dllcall("keybd_event", int, 87, int, 17, int, 0, int, 0) ;W
Sleep, 50
dllcall("keybd_event", int, 87, int, 17, int, 2, int, 0)
Sleep, 50
dllcall("keybd_event", int, 162, int, 29, int, 2, int, 0) ;CTRL UP
return

F2::
;Resupply - SSWD
dllcall("keybd_event", int, 162, int, 29, int, 0, int, 0)  ;CTRL DOWN
Sleep, 500
dllcall("keybd_event", int, 83, int, 31, int, 0, int, 0) ;S
Sleep, 50
dllcall("keybd_event", int, 83, int, 31, int, 2, int, 0)
Sleep, 50
dllcall("keybd_event", int, 83, int, 31, int, 0, int, 0) ;S
Sleep, 50
dllcall("keybd_event", int, 87, int, 17, int, 2, int, 0)
Sleep, 50
dllcall("keybd_event", int, 87, int, 17, int, 0, int, 0) ;W
Sleep, 50
dllcall("keybd_event", int, 65, int, 30, int, 2, int, 0)
Sleep, 50
dllcall("keybd_event", int, 68, int, 32, int, 0, int, 0) ;D
Sleep, 50
dllcall("keybd_event", int, 68, int, 32, int, 2, int, 0)
Sleep, 50
dllcall("keybd_event", int, 162, int, 29, int, 2, int, 0) ;CTRL UP
return

F3::
;Machine Gun - SASWD
dllcall("keybd_event", int, 162, int, 29, int, 0, int, 0)  ;CTRL DOWN
Sleep, 500
dllcall("keybd_event", int, 83, int, 31, int, 0, int, 0) ;S
Sleep, 50
dllcall("keybd_event", int, 83, int, 31, int, 2, int, 0)
Sleep, 50
dllcall("keybd_event", int, 65, int, 30, int, 0, int, 0) ;A
Sleep, 50
dllcall("keybd_event", int, 65, int, 30, int, 2, int, 0)
Sleep, 50
dllcall("keybd_event", int, 83, int, 31, int, 0, int, 0) ;S
Sleep, 50
dllcall("keybd_event", int, 83, int, 31, int, 2, int, 0)
Sleep, 50
dllcall("keybd_event", int, 87, int, 17, int, 0, int, 0) ;W
Sleep, 50
dllcall("keybd_event", int, 87, int, 17, int, 2, int, 0)
Sleep, 50
dllcall("keybd_event", int, 68, int, 32, int, 0, int, 0) ;D
Sleep, 50
dllcall("keybd_event", int, 68, int, 32, int, 2, int, 0)
Sleep, 50
dllcall("keybd_event", int, 162, int, 29, int, 2, int, 0) ;CTRL UP
return

F4::
;Supply Backpack - SASWWS
dllcall("keybd_event", int, 162, int, 29, int, 0, int, 0)  ;CTRL DOWN
Sleep, 500
dllcall("keybd_event", int, 83, int, 31, int, 0, int, 0) ;S
Sleep, 50
dllcall("keybd_event", int, 83, int, 31, int, 2, int, 0)
Sleep, 50
dllcall("keybd_event", int, 65, int, 30, int, 0, int, 0) ;A
Sleep, 50
dllcall("keybd_event", int, 65, int, 30, int, 2, int, 0)
Sleep, 50
dllcall("keybd_event", int, 83, int, 31, int, 0, int, 0) ;S
Sleep, 50
dllcall("keybd_event", int, 83, int, 31, int, 2, int, 0)
Sleep, 50
dllcall("keybd_event", int, 87, int, 17, int, 0, int, 0) ;W
Sleep, 50
dllcall("keybd_event", int, 87, int, 17, int, 2, int, 0)
Sleep, 50
dllcall("keybd_event", int, 87, int, 17, int, 0, int, 0) ;W
Sleep, 50
dllcall("keybd_event", int, 87, int, 17, int, 2, int, 0)
Sleep, 50
dllcall("keybd_event", int, 83, int, 31, int, 0, int, 0) ;S
Sleep, 50
dllcall("keybd_event", int, 83, int, 31, int, 2, int, 0)
Sleep, 50
dllcall("keybd_event", int, 162, int, 29, int, 2, int, 0) ;CTRL UP
return

F5::
;Orbital Laser - DSWDS
dllcall("keybd_event", int, 162, int, 29, int, 0, int, 0)  ;CTRL DOWN
Sleep, 500
dllcall("keybd_event", int, 68, int, 32, int, 0, int, 0) ;D
Sleep, 50
dllcall("keybd_event", int, 68, int, 32, int, 2, int, 0)
Sleep, 50
dllcall("keybd_event", int, 83, int, 31, int, 0, int, 0) ;S
Sleep, 50
dllcall("keybd_event", int, 83, int, 31, int, 2, int, 0)
Sleep, 50
dllcall("keybd_event", int, 87, int, 17, int, 0, int, 0) ;W
Sleep, 50
dllcall("keybd_event", int, 87, int, 17, int, 2, int, 0)
Sleep, 50
dllcall("keybd_event", int, 68, int, 32, int, 0, int, 0) ;D
Sleep, 50
dllcall("keybd_event", int, 68, int, 32, int, 2, int, 0)
Sleep, 50
dllcall("keybd_event", int, 83, int, 31, int, 0, int, 0) ;S
Sleep, 50
dllcall("keybd_event", int, 83, int, 31, int, 2, int, 0)
Sleep, 50
dllcall("keybd_event", int, 162, int, 29, int, 2, int, 0) ;CTRL UP
return

Numpad6::

return

;################################################

AppsKey::
Sleep, 200
SoundBeep,5000,200
Reload
return

;################################################

Break::
OnExit
Sleep, 200
SoundBeep,5000,200
CloseProg:
GuiClose:
ExitApp
return
