@echo off
title MerantheMapping - Sync with Main Repo
echo ============================================
echo   Sync with Main Repo
echo ============================================
echo.
echo This will update your local copy with the latest
echo changes from the main EterniaDevelopment repo.
echo.

cd /d "%~dp0.."

echo Switching to master branch...
git checkout master

if errorlevel 1 (
    echo.
    echo ERROR: Could not switch to master. You may have unsaved changes.
    echo Run "2_save_work.bat" first to save your work, then try again.
    pause
    exit /b 1
)

echo.
echo Fetching latest changes from the main repo...
git fetch upstream

if errorlevel 1 (
    echo.
    echo ERROR: Could not reach the main repo.
    echo Make sure you have an internet connection.
    pause
    exit /b 1
)

echo.
echo Merging changes into your local master...
git merge upstream/master

if errorlevel 1 (
    echo.
    echo ERROR: Merge conflict detected.
    echo Ask for help in the mapping Discord channel.
    pause
    exit /b 1
)

echo.
echo Pushing updated master to your fork...
git push origin master

echo.
echo ============================================
echo   Sync complete! You are up to date.
echo ============================================
echo.
pause
