# Let's get Numbers from 1 to 20
$nums = 1..20
Write-Host "Original Array : " $nums

# Create out Empty Even & Odd Arrays
$evenNums = @()
$oddNums = @()

foreach( $num in $nums ) 
{
	if ( $num % 2 -eq 0 ) {
		$evenNums += $num
	} else {
		$oddNums += $num
	}
}

Write-Host "Evens from the Array : " $evenNums
Write-Host "Odds from the Array : " $oddNums