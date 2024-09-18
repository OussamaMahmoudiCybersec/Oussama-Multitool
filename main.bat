@echo off
mode 80, 28
title Oussama's Tool
chcp 65001 >nul
cd files

:start
cls
echo.
ping localhost -n 2 >nul
echo [34m      ▄• ▄▌.▄▄ · .▄▄ ·  ▄▄▄· • ▌ ▄ ·.  ▄▄▄· .▄▄ ·     ▄▄▄▄▄            ▄▄▌ [0m
ping localhost -n 1 >nul
echo [94m▪     █▪██▌▐█ ▀. ▐█ ▀. ▐█ ▀█ ·██ ▐███▪▐█ ▀█ ▐█ ▀.     •██  ▪     ▪     ██• [0m
ping localhost -n 1 >nul
echo [36m ▄█▀▄ █▌▐█▌▄▀▀▀█▄▄▀▀▀█▄▄█▀▀█ ▐█ ▌▐▌▐█·▄█▀▀█ ▄▀▀▀█▄     ▐█.▪ ▄█▀▄  ▄█▀▄ ██▪ [0m
ping localhost -n 1 >nul
echo [96m▐█▌.▐▌▐█▄█▌▐█▄▪▐█▐█▄▪▐█▐█ ▪▐▌██ ██▌▐█▌▐█ ▪▐▌▐█▄▪▐█     ▐█▌·▐█▌.▐▌▐█▌.▐▌▐█▌▐▌ [0m
ping localhost -n 1 >nul
echo [96m ▀█▄▀▪ ▀▀▀  ▀▀▀▀  ▀▀▀▀  ▀  ▀ ▀▀  █▪▀▀▀ ▀  ▀  ▀▀▀▀      ▀▀▀  ▀█▄▀▪ ▀█▄▀▪.▀▀▀ [0m
ping localhost -n 1 >nul
echo.
echo.
echo.
echo.

:input
ping localhost -n 1 >nul
echo     [90;1m#═╦═══════»[0m  [92m[IP Lookup][0m [95m[1][0m
ping localhost -n 1 >nul
echo       [90;1m╚═╦══════»[0m  [92m[Password Generator][0m  [95m[2][0m
ping localhost -n 1 >nul
echo         [90;1m╚═╦═════»[0m  [92m[DNS Lookup][0m   [95m[3][0m
ping localhost -n 1 >nul
echo           [90;1m╚═╦════»[0m  [92m[Ping Sweep][0m  [95m[4][0m
ping localhost -n 1 >nul
echo             [90;1m╚═╦════»[0m  [92m[Password Strength Checker][0m  [95m[5][0m
echo|set /p=".          [90;1m╚══>[0m"
choice /c 12345 >nul

if /I "%errorlevel%" EQU "1" (
  echo Running IP Lookup...
  call iplookup.bat
  goto :input
)
if /I "%errorlevel%" EQU "2" (
  echo Running Password Generator...
  call passwordgenerator.bat
  goto :input
)
if /I "%errorlevel%" EQU "3" (
  echo Running DNS Lookup...
  call dnslookup.bat
  goto :input
)
if /I "%errorlevel%" EQU "4" (
  echo Running Ping Sweep...
  call pingsweep.bat
  goto :input
)
if /I "%errorlevel%" EQU "5" (
  echo Running Password Strength Checker...
  call passwordstrengthchecker.bat
  goto :input
)

echo Invalid selection. Press any key to continue...
pause
goto :input
