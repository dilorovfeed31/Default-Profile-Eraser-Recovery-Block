ENG:
Three-step Windows cleaning with Default Profile Eraser + Recovery Block: removes already installed standard applications, completely clears templates for all future users and writes a registry key that prevents the system from recovering deleted items. The result is absolute sterility with no possibility of recovery.
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
How to run: 
1. Open PowerShell with administrator privileges.
2. Use "Set-ExecutionPolicy RemoteSigned"
4. Click "Yes to all"
5. Restart your computer
6. Open PowerShell again with administrator privileges.
7. Run the script "C:\Path\To\Your\Script\Remove.ps1"
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
!!!If you see an error about finding System32\OneDriveSetup.exe or SysWOW64\OneDriveSetup.exe, this is normal! OneDrive can be uninstalled in both 64-bit and 32-bit versions.!!!
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
06.11.26 First version
06.12.26 Added removal of Cortana and OneDrive for 32-bit and 64-bit versions of Windows, after which the computer is restarted.
06.24.26 The computer reboot at the end of the script has been fixed. Removal of Microsoft.Teams.WorkAndSchool, Microsoft.Teams, and Microsoft.ClipChamp has also been added. Some adjustments have also been made to the removal of other programs.
by dilorovfeed31
