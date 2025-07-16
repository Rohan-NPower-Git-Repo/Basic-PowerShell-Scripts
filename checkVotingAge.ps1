# Typecast The Command Line Arguments to the Data-type we want

param (
	[string]$userName,
	[int]$userAge
)

if( $userAge -ge 18 ) {
	Write-Host "$userName who is $userAge years old is eligible to Vote"
} else {
	Write-Host "$userName who is $userAge years old is NOT eligible to Vote"
}

# .\checkVotingAge.ps1 -userName "John Doe" -userAge 25
# .\checkVotingAge.ps1 -userName "Jane Doe" -userAge 16