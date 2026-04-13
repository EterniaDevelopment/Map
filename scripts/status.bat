@echo off
title MerantheMapping - Status
echo ============================================
echo   Repo Status
echo ============================================
echo.

cd /d "%~dp0.."

echo Current branch:
git branch --show-current
echo.

echo All local branches:
git branch
echo.

echo Changed files:
git status --short
echo.

if "%1"=="" pause
