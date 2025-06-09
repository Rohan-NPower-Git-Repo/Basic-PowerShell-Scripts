Write-Host "Enter a Message:"
$msg = Read-Host 

Write-Host "`n $(Get-Date)" : " ERROR - " $msg -ForegroundColor DarkRed -BackgroundColor Yellow

Start-Sleep -Seconds 10 

Write-Host "`n $(Get-Date)" : " WARNING - " $msg -ForegroundColor Black -BackgroundColor DarkGray

Start-Sleep -Seconds 10 

Write-Host "`n $(Get-Date)" : " INFO - " $msg -ForegroundColor Cyan -BackgroundColor Black
