Function CustomFileLogger 
{
# We ensure that Message, Category and LogFileName are Compulsorily Passed into the Function as Variables
	Param
	(
		[ Parameter(Mandatory = $True) ] 
		[string] $logMsg,
# We ensure that the Value they send, we Validate here as Info, Warning or Error only & nothing else
		[ Parameter(Mandatory = $True) ] 
		[ ValidateSet('INFO','WARNING','ERROR') ]
		[string] $logCategory,
		# This is the LogFile where the O/P will be re-directed to
		[ Parameter(Mandatory = $True) ]
		$logFile
	)
	
	if ( $logCategory -and $logFile )
	{
		$logDate = ( (Get-Date -f yyyy-MM-dd-HH:mm:ss).toString() )
		
		$userName = Write-Output "`nUser which Logged this Message : $env:USERNAME" 
		$userName >> $logFile
		
		$logOutput = Write-Output "$logDate : $logCategory - $logMsg"
		$logOutput >> $logFile
	}
	else{
		Write-Host "Did not provide Arguments as expected!"
	}
}

CustomFileLogger -logMsg "This is an Informational Message" -logCategory INFO -logFile Info.txt
CustomFileLogger -logMsg "This is an Error Message" -logCategory ERROR -logFile Error.txt
CustomFileLogger -logMsg "This is Warning Message" -logCategory WARNING -logFile Warning.txt

# The Below Line will give a Validation Error 
CustomFileLogger -logMsg "This is WrongCategory Message" -logCategory WrongCategory 
# CustomLogger : Cannot validate argument on parameter 'logCategory'. The argument "WrongCategory" does not belong to the set "INFO,WARNING,ERROR"
# specified by the ValidateSet attribute. Supply an argument that is in the set and then try the command again.