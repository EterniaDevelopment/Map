@echo off
title MerantheMapping - Start New Edit
echo ============================================
echo   Start a New Edit (Branch)
echo ============================================
echo.
echo Each set of map changes should go on its own branch.
echo Give it a short name describing what you're changing.
echo   Examples: add-cave, fix-river-tiles, new-area
echo.

cd /d "%~dp0.."

set /p BRANCH_NAME=Branch name (no spaces, use dashes):

if "%BRANCH_NAME%"=="" (
    echo ERROR: You must enter a branch name.
    pause
    exit /b 1
)

echo.
echo Making sure master is up to date first...
git checkout master
git fetch upstream
git merge upstream/master

echo.
echo Creating new branch: %BRANCH_NAME%
git checkout -b %BRANCH_NAME%

if errorlevel 1 (
    echo.
    echo ERROR: Could not create branch. The name might already be in use.
    pause
    exit /b 1
)

echo.
echo ============================================
echo   Branch "%BRANCH_NAME%" created!
echo ============================================
echo.
echo You can now make your map edits.
echo When you're done, run "3_save_work.bat" to save.
echo.
pause
