@echo off
color 0a
:main_menu
echo  _    _    __    ____  ____  ____    __    __  __  ____      __      __    __  __  _  _   ___  _   _  ____  ____ 
echo ( \/\/ )  /__\  (  _ \( ___)(  _ \  /__\  (  \/  )( ___)    (  )    /__\  (  )(  )( \( ) / __)( )_( )( ___)(  _ \
echo  )    (  /(  )\  )   / )__)  )   / /(  )\  )    (  )__)      )(__  /(  )\  )(__)(  )  ( ( (__  ) _ (  )__)  )   /
echo (__/\__)(__)(__)(_)\_)(_)   (_)\_)(__)(__)(_/\/\_)(____)    (____)(__)(__)(______)(_)\_) \___)(_) (_)(____)(_)\_)  v0.2 
echo                                                                                                                  ConzZah
echo.
echo.
echo                                     */// PRESS [ ENTER ] TO LAUNCH WARFRAME \\\*
echo                                    */// ------------------------------------ \\\*
echo                                   *///      PRESS [ X + ENTER ] TO QUIT       \\\*
set /p userinput=
if "%userinput%"=="y" goto main_task
if "%userinput%"=="x" goto exit
:main_task 
echo Warframe-Password-goes-here| clip
cd %USERPROFILE%\AppData\Local\Warframe\Downloaded\Public\Tools\
cls
echo  _    _    __    ____  ____  ____    __    __  __  ____      __      __    __  __  _  _   ___  _   _  ____  _  _   ___ 
echo ( \/\/ )  /__\  (  _ \( ___)(  _ \  /__\  (  \/  )( ___)    (  )    /__\  (  )(  )( \( ) / __)( )_( )(_  _)( \( ) / __)
echo  )    (  /(  )\  )   / )__)  )   / /(  )\  )    (  )__)      )(__  /(  )\  )(__)(  )  ( ( (__  ) _ (  _)(_  )  ( ( (_-..
echo (__/\__)(__)(__)(_)\_)(_)   (_)\_)(__)(__)(_/\/\_)(____)    (____)(__)(__)(______)(_)\_) \___)(_) (_)(____)(_)\_) \___/
echo.
echo                                     */// Password copied to clipboard! \\\*
Launcher.exe
:exit
exit
