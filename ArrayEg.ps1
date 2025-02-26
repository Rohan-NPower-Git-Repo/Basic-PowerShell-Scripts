# Define an array of usernames
$userNames = @("chandler.bing", "monica.geller", "ross.geller", "joey.tribbiani", "phoebe.buffay", "rachel.greene", "gunther")

# Display array size
Write-Host "Array Size = $($userNames.Count)"

# Display array content
foreach ($user in $userNames) {
    Write-Host "`t $user"
    Start-Sleep -Seconds 1
}
