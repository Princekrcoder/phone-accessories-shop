@echo off
title Auto Git Pusher - Phone Accessories Shop
color 0A

setlocal enabledelayedexpansion

echo ==========================================
echo   Auto Git Pusher - Phone Accessories Shop
echo   Interval: Every 30 Seconds
echo ==========================================
echo Close terminal or press CTRL + C to stop
echo.

cd /d "E:\phone-accessories-shop" || (
    echo ERROR: Project folder not found
    pause
    exit /b
)

REM ---- Git setup ----
if not exist ".git" (
    git init
    git branch -M main
    git remote add origin https://github.com/Princekrcoder/phone-accessories-shop.git
)

git config --local user.name "Princekrcoder"
git config --local user.email "princekrcoder@gmail.com"


if not exist push-history.log (
    echo === Push History === > push-history.log
)

:loop
echo ------------------------------------------
echo Time: %date% %time%
echo Checking for changes...

REM ---- Detect tracked OR untracked changes ----
git diff --quiet
set DIFF_ERROR=%errorlevel%

git ls-files --others --exclude-standard >nul
set UNTRACKED_ERROR=%errorlevel%

if %DIFF_ERROR% neq 0 (
    set CHANGED=1
) else if %UNTRACKED_ERROR% neq 1 (
    set CHANGED=1
) else (
    set CHANGED=0
)

if %CHANGED%==1 (
    echo ✔ Changes found → committing...

    git add .
    git commit -m "Auto commit: %date% %time%"

    echo 🔼 Pushing to GitHub...
    git push origin main

    if !errorlevel! EQU 0 (
        echo ✅ PUSH SUCCESS at %time%
        echo %date% %time% - PUSH SUCCESS >> push-history.log
    ) else (
        echo ❌ PUSH FAILED – trying pull & retry
        git pull origin main --rebase
        git push origin main
        echo %date% %time% - PUSH RETRY >> push-history.log
    )
) else (
    echo ⏳ No changes detected
)

echo.
echo Recent commits:
git log --oneline -3

echo Waiting 30 seconds...
timeout /t 30 /nobreak >nul
goto loop
