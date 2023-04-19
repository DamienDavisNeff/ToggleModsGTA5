@echo off

set diri=C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V
echo CURRENT GAME DIRECTORY: "%diri%"
echo
echo CHECKING MOD STATUS

IF EXIST "%diri%\dinput8.dll" (
    echo MODS CURRENTLY ENABLED
    echo DISABLING THEM
    ren "%diri%\dinput8.dll" "_dinput8.dll"
    echo MODS DISABLED
) ELSE IF EXIST "%diri%\_dinput8.dll" (
    echo MODS CURRENTLY DISABLED
    echo ENABLING THEM
    ren "%diri%\_dinput8.dll" "dinput8.dll"
    echo MODS ENABLED
) ELSE (
    echo MODS NOT FOUND
    echo ENSURE DIRECTORY IS CORRECT
)

pause
