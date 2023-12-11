@echo off




goto :loading




:MainMenu
cls
Title Magical Quick Launcher
Color 04
echo
echo                                                      WELCOME BACK, SIR
echo                                                    WHAT WILL IT BE TODAY?
echo                                    [31m1[0m - [32mFiveM RELATED[0m                   [31m2[0m - [32mPROTECTION[0m
echo.
echo.
echo                                    [31m3[0m - [32mHWID/IP CHECKER[0m                 [31m4[0m - [32mT00LS[0m
echo.
echo.                                                     [31m5[0m - [32mHELPFUL LINKS[0m 
echo.
echo.
set /p Option=Option-
if %Option%==1 goto FiveM
if %Option%==2 goto PROTECTION
if %Option%==3 goto CHCKR 
if %Option%==4 goto Tools
if %Option%==5 goto Lnks



:FiveM
cls
color 04
:Menu
cls
echo (1000 to go back to menu)
echo                                    [31m1[0m - [32mCLEAN CACHE[0m                       [31m2[0m - [32mSPOOFER[0m
echo.
echo.
echo                                    [31m100[0m - [32mCLEAN/SPOOF ALL[0m                 [31mFIX[0m - [32mFIX PROBLEMS[0m
echo.
echo.
echo.
echo.
set /p key=key : 
if %key%==1 goto CLEAN
if %key%==2 goto SPOOFER
if %key%==100 goto CLEAN/SPOOF
if %key%==FIX goto FIX
if %key%==1000 goto MainMenu

:FIX
cls
echo  [31m50[0m - [32mBACK MENU[0m
echo.
echo                                                        [31m███████╗██╗██╗  ██╗[0m
echo                                                        [31m██╔════╝██║╚██╗██╔╝[0m
echo                                                        [31m█████╗  ██║ ╚███╔╝[0m 
echo                                                        [31m██╔══╝  ██║ ██╔██╗[0m 
echo                                                        [31m██║     ██║██╔╝ ██╗[0m
echo                                                        [31m╚═╝     ╚═╝╚═╝  ╚═╝[0m
echo.                   
echo.
echo.
echo.
echo.
echo                                                     [31m60[0m - [32mFIX LINK DISCORD[0m 
echo.
echo.
echo.
echo.
echo.
echo.
echo.
set /p key=key : 
if %key%==60 goto FIXDISCORD
if %key%==50 goto MENU

:FIXDISCORD
cls
RENAME %userprofile%\AppData\Roaming\discord\0.0.309\modules\STARCHARMS_SPOOFER discord_rpc
taskkill /f /im Discord.exe /t
timeout 1 >nul
cls
echo.
echo.
echo                                                        FIXED LINKED DISCORD !!
timeout 2 >nul
goto FIX

:CLEAN/SPOOF
cls
taskkill /f /im Steam.exe /t
set hostspath=%windir%\System32\drivers\etc\hosts
echo 127.0.0.1 xboxlive.com >> %hostspath%
echo 127.0.0.1 user.auth.xboxlive.com >> %hostspath%
echo 127.0.0.1 presence-heartbeat.xboxlive.com >> %hostspath%
REG DELETE HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\MSLicensing\HardwareID /f
REG DELETE HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\MSLicensing\Store /f
REG DELETE HKEY_CURRENT_USER\Software\WinRAR\ArcHistory /f
REG DELETE HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\bam\State\UserSettings\S-1-5-21-1282084573-1681065996-3115981261-1001 /va /f
REG DELETEH KEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\ShowJumpView /f
REG DELETEH KEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache /f
REG DELETE HKEY_CURRENT_USER\Software\WinRAR\ArcHistory /f
REG DELETE HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched /f
REG DELETE HKEY_CLASSES_ROOT\Local Settings\Software\Microsoft\Windows\Shell\MuiCache /f
REG DELETE HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\ShowJumpView /f
REG DELETE HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\bam\State\UserSettings\S-1-5-21-332004695-2829936588-140372829-1002 /f
REG DELETE HKEY_CLASSES_ROOT\Local Settings\Software\Microsoft\Windows\Shell\MuiCache /f
REG DELETE HKEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache /f
REG DELETE HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store /f
REG DELETE HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched /f
REG DELETE HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\bam\State\UserSettings\S-1-5-21-1282084573-1681065996-3115981261-1001 /f
REG DELETE HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched /f
deltree /y c:\windows\tempor~1
deltree /y c:\windows\temp
deltree /y c:\windows\tmp
deltree /y c:\windows\ff*.tmp
deltree /y c:\windows\history
deltree /y c:\windows\cookies
deltree /y c:\windows\recent
deltree /y c:\windows\spool\printers
del /s /q /f "%LocalAppData%\FiveM\FiveM.app\cfx_curl_x86_64.dll
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\cache\Browser"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\cache\db"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\cache\dunno"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\cache\priv"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\cache\servers"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\cache\subprocess"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\cache\unconfirmed"
del /s /q /f %LocalAppData%\FiveM\FiveM.app\steam_api64.dll
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\cache\authbrowser"
del /s /q /f "%LocalAppData%\FiveM\FiveM.app\cache\crashometry"
del /s /q /f "%LocalAppData%\FiveM\FiveM.app\cache\launcher_skip"
del /s /q /f "%LocalAppData%\FiveM\FiveM.app\cache\launcher_skip_mtl2"
rmdir /s /q "%LocalAppData%\DigitalEntitlements"
del /s /q /f %LocalAppData%\FiveM\FiveM.app\profiles.dll
del /s /q /f %LocalAppData%\FiveM\FiveM.app\CitizenFX_SubProcess_chrome.bin
del /s /q /f %LocalAppData%\FiveM\FiveM.app\CitizenFX_SubProcess_game.bin
del /s /q /f %LocalAppData%\FiveM\FiveM.app\CitizenFX_SubProcess_game_372.bin
del /s /q /f %LocalAppData%\FiveM\FiveM.app\CitizenFX_SubProcess_game_1604.bin
del /s /q /f %LocalAppData%\FiveM\FiveM.app\CitizenFX_SubProcess_game_1868.bin
del /s /q /f %LocalAppData%\FiveM\FiveM.app\CitizenFX_SubProcess_game_2060.bin
del /s /q /f %LocalAppData%\FiveM\FiveM.app\CitizenFX_SubProcess_game_2189.bin
del /s /q /f "%LocalAppData%\FiveM\FiveM.app\mods\*.*"
del /s /q /f "%LocalAppData%\FiveM\FiveM.app\logs\*.*"
del /s /q /f %LocalAppData%\FiveM\FiveM.app\CitizenGame.dll
del /s /q /f "%LocalAppData%\FiveM\FiveM.app\cfx_curl_x86_64.dll
del /s /q /f %LocalAppData%\FiveM\FiveM.app\steam.dll
rmdir /s /q %userprofile%\AppData\Roaming\CitizenFX
del /s /q /f %LocalAppData%\FiveM\FiveM.app\asi-five.dll
del /s /q /f %LocalAppData%\FiveM\FiveM.app\CitizenFX.ini
del /s /q /f %LocalAppData%\FiveM\FiveM.app\caches.XML
del /s /q /f %LocalAppData%\FiveM\FiveM.app\adhesive.dll
del /s /q /f %LocalAppData%\FiveM\FiveM.app\discord.dll
del /s /q /f "%LocalAppData%\FiveM\FiveM.app\crashes\*.*"
RENAME %userprofile%\AppData\Roaming\discord\0.0.309\modules\discord_rpc STARCHARMS_SPOOFER
timeout 1 >nul
cls
echo.
echo.
echo                                                            SPOOFED AND CLEANED !!
timeout 2 >nul
goto MENU


:SPOOFER
cls
echo  [31m50[0m - [32mBACK MENU[0m
echo.
echo                                    [31m███████╗██████╗  ██████╗  ██████╗ ███████╗███████╗██████╗[0m  
echo                                    [31m██╔════╝██╔══██╗██╔═══██╗██╔═══██╗██╔════╝██╔════╝██╔══██╗[0m 
echo                                    [31m███████╗██████╔╝██║   ██║██║   ██║█████╗  █████╗  ██████╔╝[0m 
echo                                    [31m╚════██║██╔═══╝ ██║   ██║██║   ██║██╔══╝  ██╔══╝  ██╔══██╗[0m 
echo                                    [31m███████║██║     ╚██████╔╝╚██████╔╝██║     ███████╗██║  ██║[0m 
echo                                    [31m╚══════╝╚═╝      ╚═════╝  ╚═════╝ ╚═╝     ╚══════╝╚═╝  ╚═╝[0m 
echo.
echo.
echo.
echo.
echo                             [31m7[0m - [32mUNLINK SOCIAL CLUB[0m                       [31m8[0m - [32mUNLINK CITIZENFX[0m
echo.
echo.
echo                             [31m9[0m - [32mSPOOFER[0m                                  [31m10[0m - [32mUNLINK DISCORD[0m                        
echo.
echo.
echo.
set /p key=key : 
if %key%==7 goto DIGITALELEMENTS
if %key%==8 goto CITIZENFX
if %key%==9 goto SPOOFE
if %key%==50 goto MENU
if %key%==10 goto DISCORD

:DIGITALELEMENTS
cls
taskkill /f /im Steam.exe /t
rmdir /s /q "%LocalAppData%\DigitalEntitlements"
cls
echo.
echo.
echo                                                             UNLINKED !!
timeout 2 >nul
goto SPOOFER

:CITIZENFX
cls
taskkill /f /im Steam.exe /t
rmdir /s /q %userprofile%\AppData\Roaming\CitizenFX
cls
echo.
echo.
echo                                                             UNLINKED !!
timeout 2 >nul
goto SPOOFER

:SPOOFE
cls
taskkill /f /im Steam.exe /t
set hostspath=%windir%\System32\drivers\etc\hosts
echo 127.0.0.1 xboxlive.com >> %hostspath%
echo 127.0.0.1 user.auth.xboxlive.com >> %hostspath%
echo 127.0.0.1 presence-heartbeat.xboxlive.com >> %hostspath%
REG DELETE HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\MSLicensing\HardwareID /f
REG DELETE HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\MSLicensing\Store /f
REG DELETE HKEY_CURRENT_USER\Software\WinRAR\ArcHistory /f
REG DELETE HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\bam\State\UserSettings\S-1-5-21-1282084573-1681065996-3115981261-1001 /va /f
REG DELETEH KEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\ShowJumpView /f
REG DELETEH KEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache /f
REG DELETE HKEY_CURRENT_USER\Software\WinRAR\ArcHistory /f
REG DELETE HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched /f
REG DELETE HKEY_CLASSES_ROOT\Local Settings\Software\Microsoft\Windows\Shell\MuiCache /f
REG DELETE HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\ShowJumpView /f
REG DELETE HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\bam\State\UserSettings\S-1-5-21-332004695-2829936588-140372829-1002 /f
REG DELETE HKEY_CLASSES_ROOT\Local Settings\Software\Microsoft\Windows\Shell\MuiCache /f
REG DELETE HKEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache /f
REG DELETE HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store /f
REG DELETE HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched /f
REG DELETE HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\bam\State\UserSettings\S-1-5-21-1282084573-1681065996-3115981261-1001 /f
REG DELETE HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched /f
deltree /y c:\windows\tempor~1
deltree /y c:\windows\temp
deltree /y c:\windows\tmp
deltree /y c:\windows\ff*.tmp
deltree /y c:\windows\history
deltree /y c:\windows\cookies
deltree /y c:\windows\recent
deltree /y c:\windows\spool\printers
del /s /q /f %LocalAppData%\FiveM\FiveM.app\CitizenFX_SubProcess_chrome.bin
del /s /q /f %LocalAppData%\FiveM\FiveM.app\CitizenFX_SubProcess_game.bin
del /s /q /f %LocalAppData%\FiveM\FiveM.app\CitizenFX_SubProcess_game_372.bin
del /s /q /f %LocalAppData%\FiveM\FiveM.app\CitizenFX_SubProcess_game_1604.bin
del /s /q /f %LocalAppData%\FiveM\FiveM.app\CitizenFX_SubProcess_game_1868.bin
del /s /q /f %LocalAppData%\FiveM\FiveM.app\CitizenFX_SubProcess_game_2060.bin
del /s /q /f %LocalAppData%\FiveM\FiveM.app\CitizenFX_SubProcess_game_2189.bin
del /s /q /f %LocalAppData%\FiveM\FiveM.app\botan.dll
del /s /q /f %LocalAppData%\FiveM\FiveM.app\asi-five.dll
del /s /q /f %LocalAppData%\FiveM\FiveM.app\steam.dll
del /s /q /f %LocalAppData%\FiveM\FiveM.app\steam_api64.dll
del /s /q /f %LocalAppData%\FiveM\FiveM.app\CitizenGame.dll
del /s /q /f %LocalAppData%\FiveM\FiveM.app\profiles.dll
del /s /q /f "%LocalAppData%\FiveM\FiveM.app\cfx_curl_x86_64.dll
del /s /q /f %LocalAppData%\FiveM\FiveM.app\CitizenFX.ini
del /s /q /f %LocalAppData%\FiveM\FiveM.app\caches.XML
del /s /q /f %LocalAppData%\FiveM\FiveM.app\adhesive.dll
cls
echo.
echo.
echo                                                             SPOOFED !!
timeout 2 >nul
goto SPOOFER

:DISCORD
cls
taskkill /f /im Steam.exe /t
del /s /q /f %LocalAppData%\FiveM\FiveM.app\discord.dll
RENAME %userprofile%\AppData\Roaming\discord\0.0.309\modules\discord_rpc STARCHARMS_SPOOFER
cls
echo.
echo.
echo                                                             UNLIKED !!
timeout 2 >nul
goto SPOOFER

:CLEAN
cls
echo  [31m50[0m - [32mBACK MENU[0m
echo.
echo                                       [31m██████╗██╗     ███████╗ █████╗ ███╗   ██╗███████╗██████╗[0m 
echo                                      [31m██╔════╝██║     ██╔════╝██╔══██╗████╗  ██║██╔════╝██╔══██╗[0m
echo                                      [31m██║     ██║     █████╗  ███████║██╔██╗ ██║█████╗  ██████╔╝[0m
echo                                      [31m██║     ██║     ██╔══╝  ██╔══██║██║╚██╗██║██╔══╝  ██╔══██╗[0m
echo                                      [31m╚██████╗███████╗███████╗██║  ██║██║ ╚████║███████╗██║  ██║[0m
echo                                       [31m╚═════╝╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝[0m
echo.
echo.
echo.
echo.
echo                                   [31m3[0m - [32mCLEAN CACHE[0m                       [31m4[0m - [32mCLEAN CRASHES[0m
echo.
echo.
echo                                   [31m5[0m - [32mCLEAN LOGS[0m                        [31m6[0m - [32mCLEAN MODS[0m
echo.
echo.
echo.
set /p key=key : 
if %key%==3 goto CACHE
if %key%==4 goto CRASH
if %key%==5 goto LOGS
if %key%==6 goto MODS
if %key%==50 goto MENU

:CACHE
cls
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\cache\Browser"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\cache\db"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\cache\dunno"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\cache\priv"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\cache\servers"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\cache\subprocess"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\cache\unconfirmed"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\cache\authbrowser"
del /s /q /f "%LocalAppData%\FiveM\FiveM.app\cache\crashometry"
del /s /q /f "%LocalAppData%\FiveM\FiveM.app\cache\launcher_skip"
del /s /q /f "%LocalAppData%\FiveM\FiveM.app\cache\launcher_skip_mtl2"
cls
echo.
echo.
echo                                                             CLEANED !!
timeout 2 >nul
goto CLEAN

:CRASH
cls
del /s /q /f "%LocalAppData%\FiveM\FiveM.app\crashes\*.*"
cls
echo.
echo.
echo                                                             CLEANED !!
timeout 2 >nul
goto CLEAN

:LOGS
cls
del /s /q /f "%LocalAppData%\FiveM\FiveM.app\logs\*.*"
cls
echo.
echo.
echo                                                             CLEANED !!
timeout 2 >nul
goto CLEAN

:MODS
cls
del /s /q /f "%LocalAppData%\FiveM\FiveM.app\mods\*.*"
cls
echo.
echo.
echo                                                             CLEANED !!
timeout 2 >nul
goto CLEAN
pause
goto MainMenu

:CHCKR 
title Magical Checker
cls
color 0a
echo %date% %time%
echo [32mUser Accounts and SIDs
echo [32m-------------------------------------------------------------------------------------[37m
wmic useraccount get name,sid

echo [32mSystem Motherboard and BIOS
echo [32m-------------------------------------------------------------------------------------[37m
wmic baseboard get serialnumber
wmic path win32_computersystemproduct get uuid

echo [32mCPU - (Central Processing Unit)
echo [32m-------------------------------------------------------------------------------------[37m
wmic cpu get processorid

echo [32mRAM (System Memory) - This may be all zeros
echo [32m-------------------------------------------------------------------------------------[37m
wmic memorychip get serialnumber

echo [32mSSD/HDD - Solid State and Standard Hard Drive(s)
echo [32m-------------------------------------------------------------------------------------[37m
wmic diskdrive get serialnumber

echo [32mGPU - (Graphical Processing Unit)
echo [32m-------------------------------------------------------------------------------------[37m
wmic PATH Win32_VideoController GET Description,PNPDeviceID

echo [32mMAC - (Network Adapter Physical Media Access Control)
echo [32m-------------------------------------------------------------------------------------[37m
wmic path Win32_NetworkAdapter where "PNPDeviceID like '%%PCI%%' AND NetConnectionStatus=2 AND AdapterTypeID='0'" get MacAddress

echo [32mIP - (Internet Protocal Adress)
echo [32m-------------------------------------------------------------------------------------[37m
ipconfig
pause
goto MainMenu

:Tools
cls
echo                                    [31m1[0m - [32mNXT-UNLOCKER[0m                   [31m2[0m - [32mBack To Menu[0m
echo.
echo.
echo.
echo.
echo.
echo.
set /p Key=Key-
if %Key%==1 goto NXT-UNLOCKER
if %key%==2 goto MainMenu

:NXT-UNLOCKER
cls
echo [32mAre You Sure You Want To Launch NXT-UNLOCKER (Y/n)[0m
set /p Ans=Answer:
if %Ans%==Y (
start D:\coding\mw3\unlkr\NXT.exe)4
if %Ans%==n goto MainMenu
pause
goto MainMenu

:Protection
cls
echo 100 TO GO BACK TO MENU
echo
echo
echo                                    [31m1[0m - [32mLaunch Spoofer[0m     [31m2[0m - [32mLaunch VPN[0m 
echo.
echo.
echo.                                               [31m2[0m - [32mLaunch Both[0m   
echo.
echo.
echo.
set /p La=Launch-
if %La%==1 (
start D:\coding\Spufer.exe
goto MainMenu
)
if %La%==2 (
start D:\VPN\ProtonVPN.exe
goto MainMenu
)
if %La%==3 goto starter
if %La%==100 goto MainMenu

:starter
cls
start D:\VPN\ProtonVPN.exe
start D:\coding\Spufer.exe
goto MainMenu


:Lnks
cls
color 04
echo Virus Scanners
echo www.virustotal.com
echo www.hybrid-analysis.com
echo metadefender.opswat.com
echo antiscan.me
echo virusscan.jotti.org
echo urlscan.io
echo.
echo Free VPNs and Proxies
echo protonvpn.com
echo sshdropbear.net
echo freevpn.me
echo www.vpnbook.com
echo cloudssh.net
echo www.freeopenvpn.org
echo free-proxy-list.net
echo.
echo Email Providers
echo protonmail.com
echo www.startmail.com
echo temp-mail.org
echo dropmail.me
echo yopmail.com
echo generator.email
echo temp-sms.org
echo.
echo Security
echo security.org
echo breachalarm.com
echo haveibeenpwned.com
echo dehashed.com
echo leak-lookup.com
echo weleakinfo.to
echo.
echo Fake person profile generators
echo fakepersongenerator.com
echo boobify.club
echo fakeimess.com
echo thispersondoesnotexist.com
echo.
echo Reverse Image search
echo pimeyes.com
echo tineye.com
echo yandex.com
echo images.google.com
echo image.baidu.com
echo pic.sogou.com
echo pic2map.com
echo onlineexifviewer.com
echo metadata2go.com
echo.
echo Reverse Username search
echo checkusernames.com
echo knowem.com
echo.
echo Reverse Search people, phone numbers, address
echo whitepages.com
echo.
echo Other
echo desktophut.com
echo patorjk.com
echo thebypasser.com (linkvertize bypass)
echo photomosh.com
echo www.remove.bg
echo www.torproject.org
echo.
echo Movies
echo 1. primewire.li
echo 2. losmovies.to
echo 3. www1.movie4u.live
echo 4. soap2day.to
echo 5. uwatchfree.bz
echo 6. 123movieshub.tc
echo 7. www2.solarmovie.to
echo 8. fmovies.to
echo 9. www3.f2movies.to
echo 10. watchseriess.co
echo 11. gomovies.re
echo 12. myflixer.com
echo.
echo Anime 
echo 1. gogoanime.vc
echo 2. www12.9anime.to
echo 3. 7anime.io
echo 4. 4anime.to
echo 5. kissanimefree.net
echo 6. animefreak.tv
echo 7. kisscartoon.info
echo 8. animedao.to
pause
goto MainMenu



:loading
title Loading Magical Quick Launcher 
Color 01
echo                     MAGICAL QUICK LAUNCH MENU LOADING, PLEASE WAIT PATIENCETLY
echo                        IF THIS DOES NOT BELONG TO YOU, PLEASE DONT USE IT 
echo I / I \ I / I \ I / I \ I / I \ I / I \ I / I \ I / I \ I / I \ I / I \ I / I \ I / I \ I / I \ I / I
timeout 3 >nul
assoc
cls
timeout 1 >nul
echo [32m[] Base set to 000000000000000000000#133148182
timeout 2 >nul
echo Setting Offsets
timeout 2 >nul
echo Offsets set to 
echo [32m[] GUI- 00000010104 
timeout 1 >nul
echo [32m[] Windows Base- #0084
timeout 1 >nul
echo [32m[] Batch Base- 95894
timeout 1 >nul
echo [32m[] Launcher Base- 95182948
timeout 1 >nul
echo [32m[] Security Base - 499294%@$##$95
timeout 4 >nul
echo.
echo.
echo    BASE LOADING... 
timeout 3 >nul
echo.
echo.
echo [32m[] Activated Rooms[0m
echo.
echo [32m[] Searching For Base[0m
timeout 2 >nul
echo.
echo [31m[] Failed to Load Rooms ![0m
timeout 3 >nul
echo.
echo [32m[] Loaded Rooms[0m
timeout 2 >nul
cls
echo [32m[] Done :)
timeout 2 >nul
echo Redirecting in 3 Second's
timeout 3 >nul

goto MainMenu

