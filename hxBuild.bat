@echo off
cls
TITLE hxRaylib - Building...
CALL :setESC
GOTO START

:START:
ECHO %ESC%[45mhxRaylib builder for Windows%ESC%[0m
TIMEOUT /T 1 /NOBREAK >NUL 2>&1
ECHO %ESC%[41mSTARTING...%ESC%[0m
TIMEOUT /T 2 /NOBREAK >NUL 2>&1
GOTO RAYLIBCHECK

:RAYLIBCHECK:
::REM Checks for Raylib before building
IF EXIST "lib\raylib\src" goto BUILD
ECHO %ESC%[45mRaylib was not found! Please, download latest stable version.%ESC%[0m
ECHO %ESC%[42mPress "ENTER" on this window after so.%ESC%[0m
pause >NUL 2>&1
exit

:BUILD:
::REM Let's get to build!
cls
ECHO %ESC%[44mBuilding... Please wait!%ESC%[0m
start "" haxe.exe Compile.hxml
GOTO BUILDERROR

:BUILDERROR:
TIMEOUT /T 40 /NOBREAK >NUL 2>&1
IF EXIST "bin\Main.exe" goto BUILDFINISH
cls
ECHO %ESC%[41mAn error occurred in the build! Please, check for any errors.%ESC%[0m
ECHO %ESC%[41mPRESS "ENTER" TO CLOSE THIS BAT FILE.%ESC%[0m
pause >NUL 2>&1
exit

:BUILDFINISH:
cls
ECHO %ESC%[44mBuilding has completed successfully!%ESC%[0m
start "" "bin\Main.exe"
ECHO %ESC%[42mPRESS "ENTER" TO CLOSE THIS BAT FILE.%ESC%[0m
pause >NUL 2>&1
exit

:setESC
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set ESC=%%b
  exit /B 0
)
exit /B 0
