@echo off
REM Batch script pour compiler les 5 fichiers Python en exécutables pour V8
REM Usage: compile_v8.bat

setlocal enabledelayedexpansion

echo.
echo ============================================================
echo DowFlow V8 - Compilation des 5 modules principaux
echo ============================================================
echo.

REM Créer les dossiers de destination
if not exist "compiled_v8" mkdir compiled_v8
if not exist "compiled_v8\dist" mkdir compiled_v8\dist
if not exist "compiled_v8\build" mkdir compiled_v8\build
if not exist "compiled_v8\specs" mkdir compiled_v8\specs

REM Variables
set PYINST=python -m PyInstaller
set DISTPATH=compiled_v8\dist
set WORKPATH=compiled_v8\build
set SPECPATH=compiled_v8\specs

REM Compiler les 5 fichiers
set COUNT=0

echo [1/5] Compilation de app.py...
%PYINST% --onefile app.py -n DowFlow_App --distpath %DISTPATH% --workpath %WORKPATH% --specpath %SPECPATH% --console >nul 2>&1
if errorlevel 0 (
    echo.✓ DowFlow_App.exe compilé
    set /a COUNT=!COUNT!+1
)

echo [2/5] Compilation de playlist.py...
%PYINST% --onefile playlist.py -n DowFlow_Playlist --distpath %DISTPATH% --workpath %WORKPATH% --specpath %SPECPATH% --console >nul 2>&1
if errorlevel 0 (
    echo.✓ DowFlow_Playlist.exe compilé
    set /a COUNT=!COUNT!+1
)

echo [3/5] Compilation de franime_extractor.py...
%PYINST% --onefile franime_extractor.py -n DowFlow_Franime --distpath %DISTPATH% --workpath %WORKPATH% --specpath %SPECPATH% --console >nul 2>&1
if errorlevel 0 (
    echo.✓ DowFlow_Franime.exe compilé
    set /a COUNT=!COUNT!+1
)

echo [4/5] Compilation de browser_extractor.py...
%PYINST% --onefile browser_extractor.py -n DowFlow_Browser --distpath %DISTPATH% --workpath %WORKPATH% --specpath %SPECPATH% --console >nul 2>&1
if errorlevel 0 (
    echo.✓ DowFlow_Browser.exe compilé
    set /a COUNT=!COUNT!+1
)

echo [5/5] Compilation de download_queue.py...
%PYINST% --onefile download_queue.py -n DowFlow_Queue --distpath %DISTPATH% --workpath %WORKPATH% --specpath %SPECPATH% --console >nul 2>&1
if errorlevel 0 (
    echo.✓ DowFlow_Queue.exe compilé
    set /a COUNT=!COUNT!+1
)

echo.
echo ============================================================
echo.✓ %COUNT%/5 fichiers compilés avec succès
echo.
echo Exécutables disponibles dans: %DISTPATH%
echo.
dir %DISTPATH% /b
echo.
echo ============================================================
pause
