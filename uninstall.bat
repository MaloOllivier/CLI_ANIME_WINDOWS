@echo off

echo ==================================================
echo DESINSTALLATION DU SETUP MPV ^| SYNCPLAY ^| ANI-CLI
echo ==================================================

:: Mise a jour du PATH pour etre sur que scoop est reconnu
set "PATH=%USERPROFILE%\scoop\shims;%PATH%"


call scoop uninstall ani-cli syncplay mpv yt-dlp ffmpeg git 2>nul


if exist "%USERPROFILE%\scoop\persist\mpv" (
    rd /s /q "%USERPROFILE%\scoop\persist\mpv"
)
if exist "%USERPROFILE%\scoop\persist\syncplay" (
    rd /s /q "%USERPROFILE%\scoop\persist\syncplay"
)

echo [3/3] Suppression de Scoop et du dossier racine...
:: Commande PowerShell pour desinstaller Scoop proprement
powershell -Command "scoop uninstall scoop" 2>nul

:: Nettoyage final du dossier scoop s'il reste des residus
if exist "%USERPROFILE%\scoop" (
    rd /s /q "%USERPROFILE%\scoop"
)

echo.
echo ====================================================================
echo   DESINSTALLATION TERMINEE ! LE SYSTEME EST PROPRE.
echo ====================================================================
pause