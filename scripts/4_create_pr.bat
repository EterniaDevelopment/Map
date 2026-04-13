@echo off
title MerantheMapping - Create Pull Request
echo ============================================
echo   Create a Pull Request
echo ============================================
echo.
echo This will open GitHub in your browser so you can
echo submit your changes for review.
echo.

cd /d "%~dp0.."

for /f "tokens=*" %%b in ('git branch --show-current') do set CURRENT_BRANCH=%%b

if "%CURRENT_BRANCH%"=="master" (
    echo ERROR: You are on the master branch.
    echo You need to be on an edit branch to create a PR.
    echo Run "2_new_branch.bat" first.
    pause
    exit /b 1
)

:: Get the fork remote URL to extract the username
for /f "tokens=*" %%u in ('git remote get-url origin') do set REMOTE_URL=%%u

:: Extract username from URL (handles both https and git@ formats)
:: https://github.com/USERNAME/Map.git
for /f "tokens=4 delims=/" %%u in ("%REMOTE_URL%") do set GITHUB_USER=%%u

echo Current branch: %CURRENT_BRANCH%
echo.
echo Make sure you have saved and pushed your work first!
echo (Run "3_save_work.bat" if you haven't)
echo.
echo Press any key to open the Pull Request page in your browser...
pause >nul

start https://github.com/EterniaDevelopment/Map/compare/master...%GITHUB_USER%:%CURRENT_BRANCH%

echo.
echo ============================================
echo   Browser opened!
echo ============================================
echo.
echo On the GitHub page:
echo   1. Add a title describing your changes
echo   2. Add any extra details in the description
echo   3. Click "Create pull request"
echo.
echo After your PR is reviewed and merged, run
echo "1_sync.bat" to pull the changes back down.
echo.
pause
