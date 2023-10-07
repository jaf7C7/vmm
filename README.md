VMM
===

A Windows Command Prompt wrapper for `vmrun` which comes with the free version of VMWare Workstation Player, allowing you to manage multiple virtual machines at the same time, as well as running machines in the background, which isn't possible through the GUI.

Installation
------------
1. Download the [raw file](https://raw.githubusercontent.com/jaf7C7/vmm/main/vmm.cmd).
2. Copy the file to a folder in your PATH.
3. Ensure the paths are correct for your system: `"vmrun=%ProgramFiles(x86)%\VMware\VMware Player\vmrun.exe"` and `"machine=%USERPROFILE%\Documents\Virtual Machines\<vm_name>\<vm_name>.vmx"`
4. The `vmm` command should now be available in Command Prompt, PowerShell and the run prompt.

Usage
-----
```
C:\Users\jfox>vmm start freebsd
```
Is equivalent to:
```
C:\Users\jfox>"%ProgramFiles(x86)%\VMware\VMware Player\vmrun.exe" start "%USERPROFILE%\Documents\Virtual Machines\freebsd\freebsd.vmx" nogui`
```
