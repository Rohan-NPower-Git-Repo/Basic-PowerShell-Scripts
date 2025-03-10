# Concatenation
$string1 = "Hello"
$string2 = "World"

Write-Host "String 1 : $string1" 
Write-Host "String 2 : $string2" 

$concatenatedString = $string1 + " " + $string2
Write-Host "`t Concatenation: $concatenatedString" # Output: Hello World

# Substring - Part of String
$string = "Hello, World!"
Write-Host "String Value : $string" 
$substring = $string.Substring(0, 5)
Write-Host "`t Substring First 5 Vals: $substring" # Output: Hello

# String Length
$length = $string.Length
Write-Host "`t String Length: $length" # Output: 13

# Replace - World with Powershell
$replacedString = $string.Replace("World", "PowerShell")
Write-Host "`t Replace World with PowerShell: $replacedString" # Output: Hello, PowerShell!

# ToUpperCase and ToLowerCase
$upperCaseString = $string.ToUpper()
$lowerCaseString = $string.ToLower()
Write-Host "`t ToUpper: $upperCaseString" # Output: HELLO, WORLD!
Write-Host "`t ToLower: $lowerCaseString" # Output: hello, world!

# Split String based on a Delimiter
$splitString = "one,two,three"
Write-Host "Array Value : $splitString" 
$array = $splitString.Split(",")
Write-Host "`t Split: $($array -join ' ')" # Output: one two three

# Join String based on a Delimiter
$joinedString = $array -join ","
Write-Host "`t Join: $joinedString" # Output: one,two,three

# Trim - Remove Whitespaces
$trimString = " Hello, World! "
Write-Host "String : $trimString--" 
$trimmedString = $trimString.Trim()
Write-Host "`t Trim: $trimmedString--" # Output: Hello, World!

# Format - Like F-Strings in Python
$name = "John Doe"
Write-Host "Name: $name"
$greeting = "Hello, {0}!" -f $name
Write-Host "`t Format: $greeting" # Output: Hello, John Doe!