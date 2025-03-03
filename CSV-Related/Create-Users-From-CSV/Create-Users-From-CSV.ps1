# Read and Print CSV Files

$csvFile = Import-Csv ".\AD-Users-WithStatus.csv"

foreach($line in $csvFile){
	
	$fullName = $line.Name
	$userName = $line.SamAccountName
	$emailID = $line.UserPrincipalName

	Write-Host "Name : " $fullName
	Write-Host "UserName : " $userName
	Write-Host "Email-ID : " $emailID
	
	$groupPath = $line.MemberOf -split ","
	
	Write-Host "Group Path : " $groupPath 

	$groupName = $($groupPath[0] -split "=")[1]
	$country = $($groupPath[1] -split "=")[1]
	$appName = $($groupPath[2] -split "=")[1]

	Write-Host "Group Name : " $groupName 
	Write-Host "Country : " $country
	Write-Host "App: " $appName "`n"
	
	#Convert Enabled from String to Boolean
	$isEnabled = [System.Convert]::ToBoolean($line.Enabled)
	
	# Remove Group and then Join Together to get OU Path
	$OUPath = $($groupPath[1],$groupPath[2],$groupPath[3],$groupPath[4]) -join ","
	Write-Host "OU: " $OUPath  "`n"
	
	New-ADUser -Name $fullName -GivenName $fullName -SamAccountName $userName -UserPrincipalName $emailID -Path $OUPath -AccountPassword (ConvertTo-SecureString -AsPlainText "Pass@12345" -Force) -ChangePasswordAtLogon $True -Enabled $isEnabled

	Add-ADGroupMember -Identity $groupName -Members $userName
	
	Get-ADUser -Identity $userName -Properties MemberOf
}