# Prompt the User for Service Name in try block
try {
	Write-Host "Enter Service Name to Check the Status:"
	$serviceName = Read-Host
	# Check if the Service is Running
	$serviceStatus = Get-Service -Name $serviceName -ErrorAction SilentlyContinue
	if ($serviceStatus.Status -eq 'Running') {
		Write-Host "`n $serviceName is Running!"
	} else {
		throw "Service is not running"
	}
} 
catch {
	Write-Host "`n"
	Get-Service -Name $serviceName
	# Check if the Service is Running if it's not let's restart it
	Write-Host "`n $serviceName is NOT Running, let's restart it!"
	Restart-Service -Name $serviceName -Force
} finally {
	# In Each Case whether it's running or stopped Show the Status of the Service
	# Always gets executed
	Write-Host "`n"
	Get-Service -Name $serviceName
	Write-Host "`n Script execution completed."
}

#  Get-Service sshd
#  Stop-Service sshd
