:loop
cls
echo ==========================================
echo   Auto Git Pusher - Phone Accessories Shop
echo ==========================================
echo Last check: %date% %time%
echo.

git pull --rebase origin main >nul 2>&1

git add .
git status --porcelain > temp.txt

for %%A in (temp.txt) do set size=%%~zA
if "%size%"=="0" (
    echo No changes detected.
) else (
    git commit -m "Auto commit: %date% %time%"
    git push origin main
    echo ✓ Push successful at %time%
)

del temp.txt
timeout /t 30 /nobreak >nul
goto loop
