@echo off
setlocal EnableDelayedExpansion

:: Get password input
set /p password=Enter the password to check:

:: Password strength check
set "strength=0"

:: Length check
if not "!password!"=="" (
    set /a strength+=1
)

:: Contains uppercase
echo !password! | findstr /r /c:"[A-Z]" >nul && set /a strength+=1

:: Contains lowercase
echo !password! | findstr /r /c:"[a-z]" >nul && set /a strength+=1

:: Contains digits
echo !password! | findstr /r /c:"[0-9]" >nul && set /a strength+=1

:: Contains special characters
echo !password! | findstr /r /c:"[!@#$%^&*()_+{}\[\]:;,.<>/?]" >nul && set /a strength+=1

:: Determine strength level
if %strength% LSS 2 (
    echo Weak password
) else if %strength% EQU 3 (
    echo Moderate password
) else if %strength% EQU 4 (
    echo Strong password
) else (
    echo Very strong password
)

pause
