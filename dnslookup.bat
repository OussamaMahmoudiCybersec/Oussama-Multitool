@echo off
set /p "domain=Enter domain name: "
nslookup %domain%
pause
