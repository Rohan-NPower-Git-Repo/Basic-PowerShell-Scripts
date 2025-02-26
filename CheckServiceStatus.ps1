# Stop-Service sshd

# Prompt user for service name
Write-Host "Enter Service Name to Check Status: "
$SERVICE = Read-Host 

# Check if service is running
$serviceStatus = Get-Service -Name $SERVICE -ErrorAction SilentlyContinue

if ($serviceStatus -and $serviceStatus.Status -eq 'Running') {
    Write-Host "`n $SERVICE is running."
} else {
    Write-Host "`n $SERVICE is not running. Restarting..."
    Restart-Service -Name $SERVICE -Force
    Get-Service -Name $SERVICE
}
