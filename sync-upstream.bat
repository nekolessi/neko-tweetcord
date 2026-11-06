@echo off
title Sync neko-tweetcord with Upstream
cd /d "%~dp0"
echo ==============================================
echo 🐾 Syncing with Upstream (Yuuzi261/Tweetcord)...
echo ==============================================
echo.
git fetch upstream
if %ERRORLEVEL% NEQ 0 (
    echo [!] Failed to fetch from upstream. Check your internet connection.
    pause
    exit /b %ERRORLEVEL%
)

echo.
echo Merging upstream/main into your main branch...
git merge upstream/main --no-edit
if %ERRORLEVEL% NEQ 0 (
    echo.
    echo [!] Merge conflict detected! Please resolve conflicts before pushing.
    pause
    exit /b %ERRORLEVEL%
)

echo.
echo Pushing updates to your GitHub fork (origin/main)...
git push origin main
if %ERRORLEVEL% NEQ 0 (
    echo.
    echo [!] Failed to push to origin.
    pause
    exit /b %ERRORLEVEL%
)

echo.
echo ==============================================
echo ✨ All done! Your fork is up to date nya! 🐾
echo ==============================================
pause
