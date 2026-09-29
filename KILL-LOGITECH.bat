@echo off
tasklist /fi "imagename eq lghub_agent.exe" | find /i "lghub_agent.exe" >nul
if errorlevel 1 goto notfound

taskkill /f /im lghub_agent.exe >nul
if errorlevel 1 (
    echo Failed to kill lghub_agent. Try running this file as administrator.
) else (
    echo lghub_agent was killed.
)
pause
exit /b

:notfound
echo lghub_agent was not found. It isn't running.
pause
exit /b
