@echo off

cd "C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V"

IF EXIST "dinput8.dll" (
    ren dinput8.dll _dinput8.dll
    echo MODS DISABLED
) ELSE IF EXIST "_dinput8.dll" (
    ren _dinput8.dll dinput8.dll
    echo MODS ENABLED
) ELSE (
    echo MODS NOT FOUND
)

pause