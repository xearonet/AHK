#Requires AutoHotkey v2.0
#Warn All

#SingleInstance Force
SetWorkingDir A_ScriptDir

global overlayGui := 0

ShowOverlay(icon)
{
    global overlayGui

    ; destroy previous overlay if exists
    if IsObject(overlayGui)
    {
        try overlayGui.Destroy()
        overlayGui := 0
    }

    margin := 180
    size   := 240
    pad    := 20

    overlayGui := Gui("+AlwaysOnTop -Caption +ToolWindow")
    overlayGui.BackColor := "2A2A2A"

    overlayGui.SetFont("s100 cWhite", "Segoe UI Symbol")
    overlayGui.AddText(
        "Center x" pad " y" pad " w" (size - pad*2) " h" (size - pad*2),
        icon
    )

    ; get cursor position
    MouseGetPos &mx, &my

    ; default monitor (always valid)
    MonitorGetWorkArea(1, &left, &top, &right, &bottom)

    ; find monitor under cursor
    monitorCount := MonitorGetCount()

    Loop monitorCount
    {
        MonitorGet(A_Index, &mLeft, &mTop, &mRight, &mBottom)

        if (mx >= mLeft && mx <= mRight && my >= mTop && my <= mBottom)
        {
            ; get work area for this monitor
            MonitorGetWorkArea(A_Index, &left, &top, &right, &bottom)
            break
        }
    }

    ; position bottom-right of detected monitor
    posX := right  - size - margin
    posY := bottom - size - margin

    overlayGui.Show("x" posX " y" posY " w" size " h" size " NoActivate")

    WinSetTransparent(128, overlayGui.Hwnd)

    guiRef := overlayGui
    SetTimer () => (IsObject(guiRef) ? guiRef.Destroy() : 0), -1000
}

StartHpKillGuard(durationMs)
{
    global hpKillGuardEndTime := A_TickCount + durationMs
    SetTimer HpKillGuard, 50
}

HpKillGuard()
{
    processName := "HPProgrammableKeyAppLoader.exe"

    global hpKillGuardEndTime
    if (A_TickCount > hpKillGuardEndTime)
    {
        SetTimer HpKillGuard, 0
        return
    }

    ; Kill process if it exists (can respawn)
    while (ProcessExist(processName))
    {
        try
            ProcessClose processName
        catch
            break
    }
}

vkFF::
{
    ; Simple debounce
    static lastTrigger := 0
    if (A_TickCount - lastTrigger < 300)
        return
    lastTrigger := A_TickCount

    icon := "⏯"

    Send "{Media_Play_Pause}"

    ShowOverlay(icon)

    StartHpKillGuard(5000)
}
