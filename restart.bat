@echo off

:loop
rem Start xtrgpuminer.exe
start "" "%USERPROFILE%\Desktop\xtrgpuminer.exe"

rem Wait for 1 hour (3600 seconds) - 10 for now
timeout /t 10 /nobreak

rem Kill xtrgpuminer.exe process
taskkill /f /im xtrgpuminer.exe

rem Wait for a few seconds before restarting
timeout /t 5 /nobreak

rem Go back to the beginning of the loop
goto loop
