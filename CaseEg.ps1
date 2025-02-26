# Read user input
$code = Read-Host "Enter Airport Code"

# Use Switch statement
switch ($code) {
    "YYZ" { Write-Host "Toronto : $code - Toronto Pearson Airport" }
    "YVR" { Write-Host "Vancouver : $code - Vancouver International Airport" }
    "YUL" { Write-Host "Montreal : $code - Montréal-Pierre Elliott Trudeau International Airport" }
    "YHZ" { Write-Host "Halifax : $code - Halifax Stanfield International Airport" }
    default { Write-Host "Incorrect Airport Code" }
}
