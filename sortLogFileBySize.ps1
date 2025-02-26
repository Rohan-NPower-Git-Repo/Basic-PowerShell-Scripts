# Change to log directory
$logPath = "C:\Windows\Logs"  # Modify path as needed

# List files sorted by size
Get-ChildItem -Path $logPath | Sort-Object Length -Descending | Format-Table Name, Length -AutoSize
