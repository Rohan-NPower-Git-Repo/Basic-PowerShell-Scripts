# Initialize an empty array
$numList = @()

# Prompt user for input
$cnt = [int] (Read-Host "Enter Count")
$start = [int] (Read-Host "Enter Start")
$end = [int] (Read-Host "Enter End")

# Create a random number generator
$random = New-Object System.Random

# Generate random numbers within the specified range and add them to the array
for ($i = 0; $i -lt $cnt; $i++) {
	$numList += $random.Next($start, $end)
}
# Display the numbers list
Write-Output "`n Numbers List: $numList"