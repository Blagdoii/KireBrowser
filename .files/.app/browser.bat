@echo off
echo 0  0  1   22222   333333      BROWSER
echo 0 0       2   2   3           BROWSER
echo 00    1   2 2 2   333333      BROWSER
echo 0 0   1   2    2  3           BROWSER
echo 0  0  1   2       333333      BROWSER  v1
echo ------------------------------------------
color 2
echo 1. Launch BROWSER
echo 2. Close BROWSER
echo 3. Restart BROWSER (If scripts not work)
echo 0000000000000000000000000000000000000000000
CHOICE /C 123 /M "Enter your choice:"
IF ERRORLEVEL 3 GOTO Restart
IF ERRORLEVEL 2 GOTO Close
IF ERRORLEVEL 1 GOTO Launch

:Launch
start proxy.py
echo Launched BROWSER! <3
color a
echo ------------------------
echo 2. Close BROWSER
echo 3. Restart BROWSER (If scripts not work)
echo 0000000000000000000000000000000000000000000
CHOICE /C 23 /M "Enter your choice:"
IF ERRORLEVEL 3 GOTO Restart
IF ERRORLEVEL 2 GOTO Close

:Close
start disable.py
taskkill proxy.py
taskkill cmd

:Restart
start restart.bat
pause