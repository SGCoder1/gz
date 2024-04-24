@echo off
title Game Zoom
cls
timeout /t 3 /nobreak >nul

:main
cls
echo Game Zoom [V1.1]
echo.
echo Start [S]
echo Exit [E]
echo.
set /p k=
if %k%==S goto :selMenu
if %k%==E goto :selMenu
if %k% not==S,E goto :main

:selMenu
cls
echo Match Maker [M]
echo Back [B]
echo.
set /p k=
if "%k%"=="M" goto :match
if "%k%"=="B" goto :main
if "%k%"=="" goto :selMenu

:match
cd C:\Program Files (x86)\SG Games\GameZoom Setup\GZ\dataSave
cls
echo ===== Match Maker =====
echo.
echo [1 / 2]: Set Match Name.
echo.
set /p txt=
echo matName = %txt% > dataSave\match1.sav

cls
echo ===== Match Maker =====
echo.
echo [2 / 2]: Set Match Difficulty.
echo.
set /p txt=
if "%txt%"=="Easy" (echo matDiff = %txt% >> (dataSave\match1.sav)
if "%txt%"=="Hard" (echo matDiff = %txt% >> (dataSave\match1.sav)

cls
echo ===== Match Maker =====
echo.
echo Match ready! Start match now? [Y/N]
echo.
set /p key=
if "%key%"==Y goto :selMenu
if "%key%"==N goto :selMenu

pause
