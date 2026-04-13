@echo off
title MerantheMapping - Switch Branch
echo ============================================
echo   Switch Branch
echo ============================================
echo.

cd /d "%~dp0.."

echo Your local branches:
git branch
echo.

set /p BRANCH_NAME=Enter branch name to switch to:

if "%BRANCH_NAME%"=="" (
    echo ERROR: You must enter a branch name.
    pause
    exit /b 1
)

git checkout %BRANCH_NAME%

if errorlevel 1 (
    echo.
    echo ERROR: Could not switch branch.
    echo You may have unsaved changes - run "4_save_work.bat" first.
    pause
    exit /b 1
)

echo.
echo Switched to branch: %BRANCH_NAME%
echo.
pause
