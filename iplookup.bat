@echo off
set /p "ip=Enter IP address: "
nslookup %ip%
pause

