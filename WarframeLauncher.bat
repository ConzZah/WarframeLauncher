@echo off & color 0a & title WarframeLauncher v0.6
REM ENTER PASSWORD BELOW
echo Warframe-Password-goes-here| clip
echo  _    _    __    ____  ____  ____    __    __  __  ____      __      __    __  __  _  _   ___  _   _  ____  ____ 
echo ( \/\/ )  /__\  (  _ \( ___)(  _ \  /__\  (  \/  )( ___)    (  )    /__\  (  )(  )( \( ) / __)( )_( )( ___)(  _ \
echo  )    (  /(  )\  )   / )__)  )   / /(  )\  )    (  )__)      )(__  /(  )\  )(__)(  )  ( ( (__  ) _ (  )__)  )   /
echo (__/\__)(__)(__)(_)\_)(_)   (_)\_)(__)(__)(_/\/\_)(____)    (____)(__)(__)(______)(_)\_) \___)(_) (_)(____)(_)\_) v0.6 
echo                                                                                                                  ConzZah
echo [SEARCHING FOR GAME CLIENT..] 
set standalonedir=%USERPROFILE%\AppData\Local\Warframe\Downloaded\Public\Tools\
set steamdir=%ProgramFiles(x86)%\Steam\steamapps\common\Warframe\Tools\
set epicgamesdir=%ProgramFiles%\Epic Games\Warframe\Downloaded\Tools\
set epicgameslink="com.epicgames.launcher://apps/244aaaa06bfa49d088205b13b9d2d115%%3A9b6e3ff688c448f4971a9c752094f286%%3A398965b67f314d31b0683b8ea11c93a4?action=launch"
:standalone
if not exist "%standalonedir%" goto steam
if exist "%standalonedir%" cd "%standalonedir%" && echo [GAME CLIENT DETECTED] && echo - Standalone Version && echo. && goto clientfound
:steam
if not exist "%steamdir%" goto epicgames
if exist "%steamdir%" start steam://rungameid/230410 && echo [GAME CLIENT DETECTED] && echo - Steam Version && echo. && goto clientfound
:epicgames
if not exist "%epicgamesdir%" goto noclientfound
if exist "%epicgamesdir%" start  "" "%epicgameslink%" && echo [GAME CLIENT DETECTED] && echo - Epic Games Version && echo. && goto clientfound
:clientfound
set TempVBSFile=%tmp%\space-keypress.vbs
if exist "%TempVBSFile%" del /f /q "%TempVBSFile%"
echo set WshShell = WScript.CreateObject("WScript.Shell") >>"%TempVBSFile%"
echo Wscript.Sleep 9999 >>"%TempVBSFile%"
echo WshShell.SendKeys " " >>"%TempVBSFile%"
start /min cmd /c cscript "%TempVBSFile%" /b //nologo && if exist "%standalonedir%" start Launcher.exe
echo   *///      [LAUNCHING WARFRAME]       \\\*
echo  */// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ \\\*
echo */// .: Password copied to Clipboard! :. \\\*
timeout /t 10 /nobreak >nul && del /f /q "%TempVBSFile%" && exit
:noclientfound
echo [ERROR]: & echo WARFRAME CLIENT COULD NOT BE FOUND. && timeout /t 10 /nobreak >nul && exit
