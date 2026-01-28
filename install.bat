echo ==================================================
echo INSTALLATION DU SETUP MPV | SYNCPLAY | ANI-CLI
echo ==================================================

:: Installation de Scoop
:: Installation de Scoop via PowerShell
powershell -Command "Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser -Force"
powershell -Command "Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression"

:: Ajout du bucket 'extras' pour Scoop
call scoop bucket add extras

:: Installation de MPV, syncplay et ani-cli via Scoop (+ les dependances)
call scoop install git mpv yt-dlp ffmpeg syncplay ani-cli

:: Creation du dossier de configuration pour MPV
set "MPV_PATH=%USERPROFILE%\scoop\persist\mpv\portable_config"
if not exist "%MPV_PATH%" mkdir "%MPV_PATH%"



:: Copie de la configuration MPV dans le dossier mpv
copy "config/mpv.zip" "%MPV_PATH%\mpv.zip"
powershell -Command "Expand-Archive -Path '%MPV_PATH%\mpv.zip' -DestinationPath '%MPV_PATH%' -Force"
del "%MPV_PATH%\mpv.zip"



:: Copie du fichier de configuration syncplay.ini dans le dossier syncplay
set "SYNCPLAY_PATH=%USERPROFILE%\scoop\persist\syncplay"
if not exist "%SYNCPLAY_PATH%" mkdir "%SYNCPLAY_PATH%"
copy "config/syncplay.ini" "%SYNCPLAY_PATH%\syncplay.ini"


echo ====================================================================
echo INSTALLATION TERMINEE ! VOUS POUVEZ LANCER MPV | SYNCPLAY | ANI-CLI
echo ====================================================================