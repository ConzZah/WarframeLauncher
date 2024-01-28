@echo off
color 0a
echo Warframe-Password-goes-here| clip
echo  _    _    __    ____  ____  ____    __    __  __  ____      __      __    __  __  _  _   ___  _   _  ____  ____ 
echo ( \/\/ )  /__\  (  _ \( ___)(  _ \  /__\  (  \/  )( ___)    (  )    /__\  (  )(  )( \( ) / __)( )_( )( ___)(  _ \
echo  )    (  /(  )\  )   / )__)  )   / /(  )\  )    (  )__)      )(__  /(  )\  )(__)(  )  ( ( (__  ) _ (  )__)  )   / 
echo (__/\__)(__)(__)(_)\_)(_)   (_)\_)(__)(__)(_/\/\_)(____)    (____)(__)(__)(______)(_)\_) \___)(_) (_)(____)(_)\_) v0.4 
echo                                                                                                                  ConzZah
echo.
echo.
echo   *///      LAUNCHING WARFRAME      \\\*
echo  */// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ \\\*
echo *///   Password copied to clipboard!  \\\*
set TempVBSFile=%tmp%\keypress.vbs
if exist "%TempVBSFile%" del /f /q "%TempVBSFile%"
echo set WshShell = WScript.CreateObject("WScript.Shell") >>"%TempVBSFile%"
echo Wscript.Sleep 7000 >>"%TempVBSFile%"
echo WshShell.SendKeys " " >>"%TempVBSFile%"
start /min cmd /c cscript "%TempVBSFile%" /b //nologo
cd %USERPROFILE%\AppData\Local\Warframe\Downloaded\Public\Tools\
Launcher.exe
del "%TempVBSFile%"
exit
