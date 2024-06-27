@echo off

:loop
rem Start xtrgpuminer.exe
start "" "%USERPROFILE%\Desktop\xtrgpuminer.exe"

rem Wait for 1 hour (3600 seconds)
timeout /t 3600 /nobreak

rem Kill xtrgpuminer.exe process
taskkill /f /im xtrgpuminer.exe

rem Check if xtrgpuminer.exe is still running and wait for it to close
:check_process
tasklist /fi "IMAGENAME eq xtrgpuminer.exe" 2>NUL | find /I /N "xtrgpuminer.exe">NUL
if "%ERRORLEVEL%"=="0" (
    timeout /t 1 /nobreak
    goto check_process
)

rem Wait for a few seconds before restarting
timeout /t 5 /nobreak

rem Go back to the beginning of the loop
goto loop
