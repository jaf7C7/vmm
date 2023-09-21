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
There are only two differences from `vmrun`:
1. The `vmm start` will automatically start a VM in the background, without opening a console window.
2. You only have to give the machine name and not the full path to the `.vmx` file.

All other commands are passed directly to `vmrun`, see the [vmrun documentation](https://docs.vmware.com/en/VMware-Fusion/13/com.vmware.fusion.using.doc/GUID-24F54E24-EFB0-4E94-8A07-2AD791F0E497.html) for more information.

Examples
--------
```
C:\Users\jfox>vmm start freebsd
```
Is equivalent to:
```
C:\Users\jfox>"%ProgramFiles(x86)%\VMware\VMware Player\vmrun.exe" start "%USERPROFILE%\Documents\Virtual Machines\freebsd\freebsd.vmx" nogui`
```
