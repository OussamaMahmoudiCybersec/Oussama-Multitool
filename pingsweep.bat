@echo off
set /p "network=Enter network (e.g., 192.168.1): "
set /p "start=Enter start host number (e.g., 1): "
set /p "end=Enter end host number (e.g., 254): "
for /L %%i in (%start%,1,%end%) do (
    ping -n 1 %network%.%%i | find "Reply from" >nul && echo %network%.%%i is up
)
pause
