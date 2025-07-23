# Set text color to Cyan (similar to Teal)
$Host.UI.RawUI.ForegroundColor = "Cyan"

# Get user input
$firstName = Read-Host "Enter your first name"
$lastName = Read-Host "Enter your last name"

# Create full name and username
$fullName = "$firstName $lastName"
$userName = "${firstName}.${lastName}"

# Display info
Write-Host "Creating user: $fullName ($userName)"

# Create the user with a temporary password
$password = ConvertTo-SecureString "TempPwd@987" -AsPlainText -Force
New-LocalUser -Name $userName -Password $password -FullName $fullName

# Show user info
Get-LocalUser -Name $userName