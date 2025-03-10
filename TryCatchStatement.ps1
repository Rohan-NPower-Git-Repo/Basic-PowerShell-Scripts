# Example 1 - Divide By Zero

try {
# Code that might cause an error
	Write-Host "Attempting to divide by zero..."
	$result = 10 / 0
	Write-Host "Result: $result"
} 
catch {
# Code to handle the error
	Write-Host "An error occurred: $_"
} 
finally {
# Code that will always run
	Write-Host "This will always run, regardless of whether an error occurred."
}
# Example 2 - ArrayIndexOutOfBounds
try {
	# Create an array with 3 elements
	$array = @(1, 2, 3)
	Write-Host "Array Values : " $array
	# Attempt to access an element at an invalid index (4, which is out of bounds)
	$element = $array[4]
	Write-Host "Element at index 4: $element"
} 
catch {
	Write-Host "An error occurred: $_"
} 
finally {
	Write-Host "This will always run, regardless of whether an error occurred."
}