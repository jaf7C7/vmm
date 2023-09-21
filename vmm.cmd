@echo off
setlocal EnableDelayedExpansion

set "vmrun=%ProgramFiles(x86)%\VMware\VMware Player\vmrun.exe"
set "cmd=%1"

if not "%~2" == "" (
	set "machine=%USERPROFILE%\Documents\Virtual Machines\%~2\%~2.vmx"
	if not exist "!machine!" (
		echo vmm: not found: "!machine!"
		goto :EOF
	)
)

if "%cmd%" == "start" (
	"%vmrun%" start "%machine%" nogui
) else (
	"%vmrun%" "%cmd%" "%machine%"
)