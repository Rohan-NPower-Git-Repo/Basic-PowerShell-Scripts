Function CustomConsoleLogger 
{
	# We ensure that Message and Category are Compulsorily Passed into the Function as Variables
	Param
	(
		[ Parameter(Mandatory = $True) ] 
		[string] $logMsg,
# We ensure that the Value they send, we Validate here as Info, Warning or Error only & nothing else
		[ Parameter(Mandatory = $True) ] 
		[ ValidateSet('INFO','WARNING','ERROR') ]
		[string] $logCategory 
	)
	
	$logDate = ( (Get-Date -f yyyy-MM-dd-HH:mm:ss).toString() )
	# Write-Host "Date : " $logDate
	
	switch( $logCategory ) 
	{
		"ERROR" 
		{ 
			Write-Host "`n" $logDate " : " $logCategory " - " $logMsg -ForegroundColor DarkRed -BackgroundColor DarkYellow
		}
		"INFO" 
		{ 
			Write-Host "`n" $logDate " : " $logCategory " - " $logMsg -ForegroundColor DarkGreen -BackgroundColor Gray
		}
		"WARNING" 
		{ 
			Write-Host "`n" $logDate " : " $logCategory " - " $logMsg -ForegroundColor Black -BackgroundColor Cyan
		}
		default
		{ 
			# It will never come here because of the ValiDateSet but it's good to have
			Write-Host "Invalid Airport Code" -ForegroundColor Magenta
		}
	}
}

CustomConsoleLogger -logMsg "This is an Informational Message" -logCategory INFO
CustomConsoleLogger -logMsg "This is an Error Message" -logCategory ERROR
CustomConsoleLogger -logMsg "This is Warning Message" -logCategory WARNING

# The Below Line will give a Validation Error 
CustomConsoleLogger -logMsg "This is WrongCategory Message" -logCategory WrongCategory
# CustomLogger : Cannot validate argument on parameter 'logCategory'. The argument "WrongCategory" does not belong to the set "INFO,WARNING,ERROR"
# specified by the ValidateSet attribute. Supply an argument that is in the set and then try the command again.