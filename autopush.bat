@echo off
title Auto Git Pusher - Dual Repo (Stable)
color 0A
setlocal enabledelayedexpansion

REM ================= PATHS =================
set REPO_30S=E:\phone-accessories-shop
set REPO_1H=E:\phone-accessories-shop

REM ============== GIT ID ===================
set GIT_NAME=Princekrcoder
set GIT_EMAIL=princekrcoder@gmail.com

REM ============ TIMER ======================
set HOUR_COUNTER=0

echo ==========================================
echo   AUTO GIT PUSHER
echo   Repo-1 : Every 30 Seconds
echo   Repo-2 : Start + Every 1 Hour
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

git config user.name "%GIT_NAME%"
git config user.email "%GIT_EMAIL%"

git status --porcelain >nul
if errorlevel 1 (
    echo ❌ [30s] Git error
) else (
    for /f %%A in ('git status --porcelain ^| find /c /v ""') do set CHANGES=%%A
    if !CHANGES! GTR 0 (
        git add .
        git commit -m "Auto commit (30s): %date% %time%"
        git push origin main
        echo ✅ [30s] PUSHED
    ) else (
        echo ⏳ [30s] No changes
    )
)

REM =================================================
REM =============== REPO 2 (1 HOUR) =================
REM =================================================
:hour_repo
if %HOUR_COUNTER%==0 (
    call :PUSH_HOUR
)

set /a HOUR_COUNTER+=30
if %HOUR_COUNTER% GEQ 3600 (
    set HOUR_COUNTER=0
)

timeout /t 30 /nobreak >nul
goto loop

REM =================================================
REM =============== PUSH FUNCTION ===================
REM =================================================
:PUSH_HOUR
cd /d "%REPO_1H%" || exit /b

git config user.name "%GIT_NAME%"
git config user.email "%GIT_EMAIL%"

git status --porcelain >nul
if errorlevel 1 (
    echo ❌ [1h] Git error
) else (
    for /f %%A in ('git status --porcelain ^| find /c /v ""') do set CHANGES=%%A
    if !CHANGES! GTR 0 (
        git add .
        git commit -m "Auto commit (1h): %date% %time%"
        git push origin main
        echo ✅ [1h] PUSHED
    ) else (
        echo ⏳ [1h] No changes
    )
)
exit /b
