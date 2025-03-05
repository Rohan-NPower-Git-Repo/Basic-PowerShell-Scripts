# Read and Print CSV Files

$csvFile = Import-Csv ".\AD-User-Info.csv"

foreach($line in $csvFile){
	
	$fullName = $line.Name
	$userName = $line.SamAccountName
	$emailID = $line.UserPrincipalName

	Write-Host "`n"
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
	
	# Create our Folder Structure
	mkdir -Path "C:\User_Dirs\$appName\$country\$groupName\$userName"
}