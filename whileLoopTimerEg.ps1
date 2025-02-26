$loopVar = 1

while ($loopVar -le 10) {
    Write-Host "DateTime : $(Get-Date)"
    $loopVar++
    Start-Sleep -Seconds 2
}
