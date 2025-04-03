:: Turn Echo Off so it doesnt print all the Commands provided in the Script
@echo off

:: Change the Text Color to Aqua
color 0B

:: Loop ( start, increment/decrement for every step, end )

echo Odd Numbers:
:: Increment Odd Values
for /L %%i in (1,2,10) do (
	echo %%i
)

echo Even Numbers:
:: Decrement Even Values
for /L %%i in (10,-2,0) do (
	echo %%i
)