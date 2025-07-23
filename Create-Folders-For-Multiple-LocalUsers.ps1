$userNames = @("john.doe", "jane.doe")

foreach( $user in $userNames ) {
	# Create Base Folder first
	$folderPath = "C:\User_Dirs\$user"

	mkdir -Path $folderPath

	# Create Internal Folder Structure
	mkdir -Path $($folderPath + "\Softwares")
	mkdir -Path $($folderPath + "\Documents")
	mkdir -Path $($folderPath + "\Pictures")
}