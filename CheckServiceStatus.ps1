# Prompt the User for Service Name
Write-Host "Enter Service Name to Check the Status:"
$serviceName = Read-Host

# Check if the Service is Running if it's not let's restart it
$serviceStatus = Get-Service -Name $serviceName -ErrorAction SilentlyContinue

if ($serviceStatus -and $serviceStatus.Status -eq 'Running') {
	Write-Host "`n $serviceName is Running!"
} else {
	Get-Service -Name $serviceName
	Write-Host "`n $serviceName is NOT Running, let's restart it!"
	Restart-Service -Name $serviceName -Force
	Write-Host "`n"
	Get-Service -Name $serviceName
}

#  Get-Service sshd
#  Stop-Service sshd