#Requires AutoHotkey v2.0
#UseHook

vkFF::
{
    ; Simple debounce
    static lastTrigger := 0
    if (A_TickCount - lastTrigger < 300)
        return
    lastTrigger := A_TickCount

    ; Media play / pause
    Send "{Media_Play_Pause}"

    ; Arm kill guard for HP loader
    StartHpKillGuard(5000)
}

StartHpKillGuard(durationMs)
{
    global hpKillGuardEndTime := A_TickCount + durationMs
    SetTimer HpKillGuard, 50
}

HpKillGuard()
{
    processName := "HPProgrammableKeyAppLoader.exe"

    ; Stop guard when time window expires
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
