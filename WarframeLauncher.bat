@echo off
color 0a
echo Warframe-Password-goes-here| clip
echo  _    _    __    ____  ____  ____    __    __  __  ____      __      __    __  __  _  _   ___  _   _  ____  ____ 
echo ( \/\/ )  /__\  (  _ \( ___)(  _ \  /__\  (  \/  )( ___)    (  )    /__\  (  )(  )( \( ) / __)( )_( )( ___)(  _ \
echo  )    (  /(  )\  )   / )__)  )   / /(  )\  )    (  )__)      )(__  /(  )\  )(__)(  )  ( ( (__  ) _ (  )__)  )   / 
echo (__/\__)(__)(__)(_)\_)(_)   (_)\_)(__)(__)(_/\/\_)(____)    (____)(__)(__)(______)(_)\_) \___)(_) (_)(____)(_)\_) v0.5 
echo                                                                                                                  ConzZah
set standalonedir=%USERPROFILE%\AppData\Local\Warframe\Downloaded\Public\Tools\
set steamdir=%ProgramFiles(x86)%\Steam\steamapps\common\Warframe\Tools\
set TempVBSFile=%tmp%\keypress.vbs
if exist "%TempVBSFile%" del /f /q "%TempVBSFile%"
echo set WshShell = WScript.CreateObject("WScript.Shell") >>"%TempVBSFile%"
echo Wscript.Sleep 9999 >>"%TempVBSFile%"
echo WshShell.SendKeys " " >>"%TempVBSFile%"
start /min cmd /c cscript "%TempVBSFile%" /b //nologo
:standalone
if not exist "%standalonedir%" goto steam
if exist "%standalonedir%" cd "%standalonedir%" && echo [GAME CLIENT DETECTED] && echo - Standalone Version && Launcher.exe & goto clientfound
:steam
if not exist "%steamdir%" goto noclientfound
if exist "%steamdir%" start steam://rungameid/230410 && echo [GAME CLIENT DETECTED] && echo - Steam Version && goto clientfound
:clientfound
echo.
echo   *///      [LAUNCHING WARFRAME]       \\\*
echo  */// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ \\\*
echo */// .: Password copied to Clipboard! :. \\\*
del "%TempVBSFile%" && timeout /t 10 && exit
:noclientfound
echo. && echo [ERROR] WARFRAME CLIENT COULD NOT BE FOUND. && timeout /t 10 && exit
