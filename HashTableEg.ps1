# Create a hash table
$hashTable = @{
	Canada = 'CAD'
	India = 'INR'
	USA = 'USD'
	UK = 'GBP'
}

# Retrieve and print values from the hash table
Write-Host "Canada: $($hashTable["Canada"])"
Write-Host "India: $($hashTable["India"])"
Write-Host "USA: $($hashTable["USA"])"
Write-Host "UK: $($hashTable["UK"])"

# Loop through all keys and values in the hash table
Write-Host "All key-value pairs in the hash table:"

foreach ($key in $hashTable.Keys) {
	Write-Host "`t" $key "-" $($hashTable[$key])
}