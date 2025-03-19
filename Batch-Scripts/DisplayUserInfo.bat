:: Accept the User I/P and Display the Details

:: Turn Echo Off so it doesnt print all the Commands provided in the Script
@echo off

:: Change the Text Color to Teal
color 3

:: Get User Input and Store in a variable
set /p firstName="Please enter your first name: "

set /p lastName="Please enter your last name: "

echo "Good Morning, %firstName% %lastName%"