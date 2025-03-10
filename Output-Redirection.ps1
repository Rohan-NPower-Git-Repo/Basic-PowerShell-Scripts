# Append user & Date information to the log file
# Add-Content -Path "myLogFile.log"

# Since we don't want to O/P anything to the Console here Write-Output makes the most sense instead of Write-Host! 
Write-Output "`n User who performed this Script : $env:USERNAME" >> myLogFile.log

Write-Output "Date and Time : " $(Get-Date) >> myLogFile.log