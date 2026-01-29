$apps = @('aria2', 'git', 'mpv', 'yt-dlp', 'ffmpeg', 'syncplay', 'ani-cli')
$scoop = "$env:USERPROFILE\scoop\shims\scoop.cmd"

foreach ($app in $apps) {
    Write-Host "Preparation de l'installation de : \'$app\'" -ForegroundColor Cyan
    & $scoop install $app 2>&1 | ForEach-Object {
        if ($_ -match 'was installed successfully!') {
            Write-Host "`n[OK] $app est installe !" -ForegroundColor Green
        }
        elseif ($_ -match 'Download: \[#') {
            Write-Host ("`r" + $_.ToString().Replace('Download: ', '')) -NoNewline
        }
    }
    Write-Host "" 
}
timeout 3