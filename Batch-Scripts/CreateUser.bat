:: Accept the User's Name and Create the User

:: Turn Echo Off so it doesnt print all the Commands provided in the Script
@echo off

:: Change the Text Color to Teal
color 3

:: Get User Input and Store in a variable
set /p firstName="Please enter your first name: "

set /p lastName="Please enter your last name: "

:: Set UserName and FullName Values
set "fullName=%firstName% %lastName%"
set "userName=%firstName%_%lastName%"

echo Creating User with Full Name %fullName% and UserName : %userName%

:: Set a Dummy Password and Ask User to Change on Next Logon
net user "%userName%" TempPwd@987 /add /fullname:"%fullName%" /logonpasswordchg:yes

:: Display User Info
net user %userName%