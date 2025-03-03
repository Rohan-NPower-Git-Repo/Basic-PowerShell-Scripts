Write-Host "Function without parameters:"

function sayHello {
	Write-Host "`t Hello Everyone!"
}

sayHello 

# Customize Code and O/P as per requirement

Write-Host "`n Function with parameters:"

function greetUser {
	param(
		[string] $greeting
	)
	
	Write-Host "`t User Says : " $greeting
}

greetUser( 'Bonjour!' )
greetUser( 'Hola' )