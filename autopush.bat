@echo off
setlocal EnableDelayedExpansion
title Auto Git Pusher - Phone Accessories Shop
color 0A

echo ==========================================
echo   Auto Git Pusher - Phone Accessories Shop
echo   Interval: Every 30 Seconds
echo ==========================================
echo Terminal close = Script stop
echo Press CTRL + C to stop
echo.

cd /d E:\phone-accessories-shop
if errorlevel 1 (
    echo Folder not found! Exiting...
    pause
    exit
)

REM ---------- Git initialization ----------
if not exist ".git" (
    echo Initializing Git repository...
    git init
    git branch -M main
    git remote add origin https://github.com/Princekrcoder/phone-accessories-shop.git

    if not exist "README.md" (
        echo # Phone Accessories Shop > README.md
        echo Auto-generated README >> README.md
    )

    git add .
    git commit -m "Initial commit"
    git push -u origin main

    echo Initial setup done. Restart BAT file.
    pause
    exit
)

REM ---------- Auto push loop ----------
:loop
cls
echo ==========================================
echo   Auto Git Pusher - Phone Accessories Shop
echo ==========================================
echo Last check: %date% %time%
echo.

git add .

REM ---- Correct change detection ----
git status --porcelain > temp_git_status.txt

for %%A in (temp_git_status.txt) do set filesize=%%~zA
if "!filesize!"=="0" (
    echo No changes detected.
) else (
    echo Changes detected. Committing...
    git commit -m "Auto commit: %date% %time%"
    echo Pushing to GitHub...
    git push origin main
    echo ✓ Push completed at %time%
)

del temp_git_status.txt

echo.
echo Next check in 30 seconds...
echo Press CTRL + C or close window to stop
timeout /t 30 /nobreak >nul
goto loop
