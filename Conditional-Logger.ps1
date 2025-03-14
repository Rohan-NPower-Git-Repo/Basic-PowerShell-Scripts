Write-Host "Enter the Message Type : Info(I) | Error(E) | Warning(W) | Quit(Q)"
$msgType = Read-Host
	
# Typecast to char DataType
$msgType = [char] $msgType
	
if( $msgType -eq 'Q' )
{
	Write-Host "GoodBye!" -ForegroundColor Black -BackgroundColor Cyan
}
else
{
	Write-Host "Enter the Message :"
	$msg = Read-Host

	if ($msgType -eq 'E') 
	{
		Write-Host "`n" $(Get-Date)" : " ERROR " - " $msg -ForegroundColor DarkRed -BackgroundColor Yellow
	} 
	elseif( $msgType -eq 'W' )
	{
		Write-Host "`n" $(Get-Date) " : " WARNING " - " $msg -ForegroundColor Black -BackgroundColor DarkGray
	}
	elseif( $msgType -eq 'I' )
	{
    		Write-Host "`n" $(Get-Date) " : " INFO " - " $msg -ForegroundColor "Cyan" -BackgroundColor "Black"
	}
	else
	{
		Write-Host "`n Incorrect Type!" -ForegroundColor "Magenta" -BackgroundColor "White"
	}
}