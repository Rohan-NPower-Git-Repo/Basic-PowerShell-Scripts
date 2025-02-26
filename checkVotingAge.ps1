# Typecast The Command Line Arguments to the Data-type we want
param (
    [string]$uName,
    [int]$uAge
)

if ($uAge -ge 18) {
    Write-Host "$uName who is $uAge years old is eligible to vote"
} else {
    Write-Host "$uName who is $uAge years old is NOT eligible to vote"
}

# Run As : .\checkVotingAge.ps1 -uName "John Doe" -uAge 20