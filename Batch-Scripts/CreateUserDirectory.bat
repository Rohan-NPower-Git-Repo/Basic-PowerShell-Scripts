:: Accept the User's Name and Create a Folder Structure

:: Turn Echo Off so it doesnt print all the Commands provided in the Script
@echo off

:: Change the Text Color to Teal
color 3

:: Get User Input and Store in a variable
set /p firstName="Please enter your first name: "

set /p lastName="Please enter your last name: "

:: Create Folders based on UserName
echo "Creating Folders for User: %firstName% %lastName%"

:: Set variable value as firstName_lastName
set "folderName=%firstName%_%lastName%"

:: Create Folder Structure
mkdir %folderName%_Softwares
mkdir %folderName%_Documents
mkdir %folderName%_Pictures

:: Display Directory Structure
dir %folderName%*