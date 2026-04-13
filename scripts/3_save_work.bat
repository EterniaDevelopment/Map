@echo off
title MerantheMapping - Save Work
echo ============================================
echo   Save Your Work
echo ============================================
echo.

cd /d "%~dp0.."

:: Show current branch
echo Current branch:
git branch --show-current
echo.

:: Show what changed
echo Changed files:
git status --short
echo.

:: Check if there are changes
git status --porcelain | findstr /r "." >nul
if errorlevel 1 (
    echo No changes detected. Nothing to save.
    pause
    exit /b 0
)

echo Describe your changes in a short message.
echo   Examples: "Added new tavern building"
echo            "Fixed broken wall tiles in arena"
echo.
set /p COMMIT_MSG=Commit message:

if "%COMMIT_MSG%"=="" (
    echo ERROR: You must enter a commit message.
    pause
    exit /b 1
)

echo.
echo Saving all changes...
git add -A
git commit -m "%COMMIT_MSG%"

if errorlevel 1 (
    echo.
    echo ERROR: Commit failed. Ask for help if this persists.
    pause
    exit /b 1
)

echo.
echo Pushing to your fork on GitHub...
for /f "tokens=*" %%b in ('git branch --show-current') do set CURRENT_BRANCH=%%b
git push -u origin %CURRENT_BRANCH%

if errorlevel 1 (
    echo.
    echo ERROR: Push failed. Make sure you have internet access.
    pause
    exit /b 1
)

echo.
echo ============================================
echo   Work saved and pushed to GitHub!
echo ============================================
echo.
echo If you're done with this edit, run "4_create_pr.bat"
echo to submit it for review.
echo.
pause
