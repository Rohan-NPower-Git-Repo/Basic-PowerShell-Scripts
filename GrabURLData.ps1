# Define the URL of the REST API
$apiUrl = "https://jsonplaceholder.typicode.com/users"

# Make a GET request to the REST API and store the response
$response = Invoke-RestMethod -Uri $apiUrl

# Display the JSON response
Write-Host "JSON Data:"
$response

Write-Host "`n END!"

# Iterate through each user in the response and print their details
foreach ($user in $response) {
	Write-Host "`n For User ID : $($user.id)"
	Write-Host "`t Name: $($user.name)"
	Write-Host "`t Email: $($user.email)"
	Write-Host "`t Phone: $($user.phone)"
	Write-Host "`t City: $($user.address.city)"
	Write-Host "`t Website: $($user.website)"
	Write-Host "`t Company Name: $($user.company.name)"
}