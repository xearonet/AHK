#Requires AutoHotkey v2.0
#Warn All

#SingleInstance Force
SetWorkingDir A_ScriptDir

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

    Send "{Media_Play_Pause}"

    StartHpKillGuard(5000)
}
