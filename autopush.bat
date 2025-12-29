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

REM ---------- Change to your project directory ----------
cd /d "E:\phone-accessories-shop" || (
    echo ERROR: Cannot change to directory E:\phone-accessories-shop
    pause
    exit /b 1
)

REM ---------- Git initialization (one-time) ----------
if not exist ".git" (
    echo Initializing Git repository...
    git init
    git branch -M main
    git remote add origin https://github.com/Princekrcoder/phone-accessories-shop.git
) else (
    REM Check if remote origin exists
    git remote get-url origin >nul 2>&1
    if errorlevel 1 (
        echo Adding remote origin...
        git remote add origin https://github.com/Princekrcoder/phone-accessories-shop.git
    )
)

REM ---------- create history file if not exists ----------
if not exist push-history.log (
    echo === Push History Log === > push-history.log
)

REM ---------- Set git configuration ----------
git config --local user.email "your-email@example.com"
git config --local user.name "Princekrcoder"

:loop
cls
echo ==========================================
echo   Auto Git Pusher - Phone Accessories Shop
echo ==========================================
echo Last check: %date% %time%
echo.

REM -------- Check for changes (including untracked files) ----------
git status --porcelain | findstr /r "^.." >nul

if %errorlevel%==0 (
    echo Changes detected.
    
    REM -------- Add all changes ----------
    git add .
    
    REM -------- Commit ----------
    git commit -m "Auto commit: %date% %time%"
    
    REM -------- Push to GitHub ----------
    echo Pushing to GitHub...
    git push -u origin main
    
    if !errorlevel!==0 (
        echo Push completed at %time%
        
        REM ---- WRITE TO HISTORY LOG ----
        echo %date% %time% - Auto push completed >> push-history.log
    ) else (
        echo ERROR: Push failed at %time%
        echo %date% %time% - Auto push FAILED >> push-history.log
        
        REM Try pulling first if push fails
        echo Trying to pull latest changes first...
        git pull origin main --rebase
        git push origin main
    )
) ELSE (
    echo No changes found.
)

echo.
echo -------- Git Status --------
git status --short

echo.
echo -------- Recent Commit History --------
git log --oneline -n 5 2>nul || echo No commits yet or git log failed

echo.
echo -------- Next check in 30 seconds --------
timeout /t 30 /nobreak >nul
goto loop