@echo off
title Auto Git Pusher - Phone Accessories Shop
color 0A

setlocal enabledelayedexpansion

echo ==========================================
echo   Auto Git Pusher - Phone Accessories Shop
echo   Interval: Every 30 Seconds
echo ==========================================
echo Close terminal to stop
echo Press CTRL + C to stop
echo.

cd /d E:\phone-accessories-shop || exit

REM ---------- Git initialization (one-time) ----------
if not exist ".git" (
    echo Initializing Git repository...
    git init
    git branch -M main
    git remote add origin https://github.com/Princekrcoder/phone-accessories-shop.git
)

:loop
cls
echo ==========================================
echo   Auto Git Pusher - Phone Accessories Shop
echo ==========================================
echo Last check: %date% %time%
echo.

REM -------- detect any changes ----------
git diff-index --quiet HEAD --

IF NOT %ERRORLEVEL%==0 (
    echo Changes detected.
    git add .
    git commit -m "Auto commit: %date% %time%"
    echo Pushing...
    git push origin main
    echo Push completed at %time%
) ELSE (
    echo No changes found.
)

echo.
echo Next check in 30 seconds...
timeout /t 30 /nobreak >nul
goto loop
