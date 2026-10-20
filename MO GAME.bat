@echo off
chcp 65001 >nul
set "F=%~dp0index.html"
where msedge >nul 2>nul && (start msedge "%F%" & exit /b)
if exist "%ProgramFiles%\Google\Chrome\Application\chrome.exe" (start "" "%ProgramFiles%\Google\Chrome\Application\chrome.exe" "%F%" & exit /b)
if exist "%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe" (start "" "%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe" "%F%" & exit /b)
start "" "%F%"
