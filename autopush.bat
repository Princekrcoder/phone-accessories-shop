@echo off
title Auto Git Pusher - Dual Repo
color 0A
setlocal enabledelayedexpansion

REM ================= PATHS =================
set REPO_30S=E:\phone-accessories-shop
set REPO_1H=E:\phone_accessories_shop

REM ============== GIT ID ===================
set GIT_NAME=Princekrcoder
set GIT_EMAIL=princekrcoder@gmail.com

REM ============ HOUR TRACK =================
set LAST_PUSH_HOUR=

echo ==========================================
echo   AUTO GIT PUSHER
echo   Repo-1 : Every 30 Seconds
echo   Repo-2 : Every 1 Hour
echo ==========================================
echo CTRL + C to stop
echo.

:loop
echo ------------------------------------------
echo Time: %date% %time%

REM =================================================
REM =============== REPO 1 (30 SEC) =================
REM =================================================
cd /d "%REPO_30S%" || goto hour_repo

git config --local user.name "%GIT_NAME%"
git config --local user.email "%GIT_EMAIL%"

git diff --quiet
if errorlevel 1 (
    git add .
    git commit -m "Auto commit (30s): %date% %time%"
    git push origin main
    echo ✅ [30s] PUSHED
) else (
    echo ⏳ [30s] No changes
)

REM =================================================
REM =============== REPO 2 (1 HOUR) =================
REM =================================================
:hour_repo
for /f "tokens=1 delims=:" %%H in ("%time%") do set CURRENT_HOUR=%%H

if NOT "%CURRENT_HOUR%"=="%LAST_PUSH_HOUR%" (
    set LAST_PUSH_HOUR=%CURRENT_HOUR%

    cd /d "%REPO_1H%" || goto wait

    git config --local user.name "%GIT_NAME%"
    git config --local user.email "%GIT_EMAIL%"

    git diff --quiet
    if errorlevel 1 (
        git add .
        git commit -m "Auto commit (1h): %date% %time%"
        git push origin main
        echo ✅ [1h] PUSHED
    ) else (
        echo ⏳ [1h] No changes
    )
)

:wait
timeout /t 30 /nobreak >nul
goto loop
