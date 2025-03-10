# Since Write-Host is primarily used for Printing to the Console it's data is printed on Console with priority before the Write-Output's Data 

# When we don't want to O/P anything to the Console but redirect the O/P to another command or function or Redirection or the Pipeline or to save it into a Variable!
# In simple words, whenever we intend to not Send the Data to the Powershell Console that's when we use Write-Output
Write-Output $(Get-Service sshd) | Select-Object DisplayName
Write-Output $(Get-Date) >> output.txt

# When we want to O/P something to the Console, also maybe format the O/P as required we use Write-Host
Write-Host "Hello, World!"
Write-Host (2,4,6,8,10,12) -Separator ", +2= "
Write-Host (1,3,5,7,9,11) -Separator ", -> " -ForegroundColor DarkRed -BackgroundColor DarkYellow
Write-Host "Hello, World!" -ForegroundColor DarkBlue -BackgroundColor Cyan "`n"

# Available Colors for Write-Host : Black, DarkBlue, DarkGreen, DarkCyan, DarkRed, DarkMagenta, DarkYellow, Gray, DarkGray, Blue, Green, Cyan, Red Magenta, Yellow, White

# Write-Host cannot be used for O/P Redirection only Write-Output 
Write-Output $(Get-Date) >> output.txt [Works perfectly]
Write-Host $(Get-Date) >> output.txt #[prints to the Console but nothing on the file]

# Write-Host doesn't return any Value but Write-Output returns a Value
$retVal_1 = Write-Host "WH - Hello"
$retVal_2 = Write-Output "WO - Hello"
# This prints WH - Hello but we don't get any O/P for WO so lets print it
Write-Host "retVal_1 : " $retVal_1
Write-Host "retVal_2 : " $retVal_2

# This prints as the O/P was stored with Write-Output
# retVal_1 :
# retVal_2 :  WO - Hello

# Also if we don't want any Console O/P in Write-Host we can add Out-Null to redirect O/P to NULL
Write-Host "WH2 - Hello" | Out-Null
Write-Output "WO2 - Hello"  | Out-Null