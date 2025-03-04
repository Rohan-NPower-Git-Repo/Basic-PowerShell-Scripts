# Calculator

Write-Host "Enter Number #1"
$num1 = Read-Host 

Write-Host "Enter Number #2"
$num2 = Read-Host 

Write-Host "Number #1 Type 1 = " $num1.GetType().Name "and Number #2 = " $num2.GetType().Name

# Typecast to Integer
$num1 = [int] $num1
$num2 = [int] $num2

Write-Host "Number #1 Type 2 = " $num1.GetType().Name "and Number #2 = " $num2.GetType().Name

Write-Host "Number #1 = $num1 and Number #2 = $num2"

Write-Host "`n Simple Calculator:"

Write-Host "`t Addition = " ($num1 + $num2)
Write-Host "`t Subtraction = " ($num1 - $num2)
Write-Host "`t Power/Exponential = " ([math]::Pow($num1, $num2))
Write-Host "`t Multiplication = " ($num1 * $num2)
Write-Host "`t Division = " ($num1 / $num2)