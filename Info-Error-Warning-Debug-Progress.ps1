# Informational Message Give Simple Information : Write-Information
Write-Information -MessageData "This is an Informational Message" -InformationAction Continue
Write-Host "Information-Preference: " $informationpreference
# Default $informationpreference -> SilentlyContinue which does not print to the Console but with Continue Keyword above it prints to the Console

# Verbose Message Another Way for Information : Write-Verbose
Write-Verbose -Message "This is a Verbose Informational Message" -Verbose
Write-Host "Verbose-Preference: " $VerbosePreference
# Default $VerbosePreference  -> SilentlyContinue which does not print to the Console but with Verbose Keyword above it prints to the Console

# When something definitely goes wrong and the execution stops, we face an Error
Write-Error "This is an Error Message"
Write-Error "Error - Access denied." -Category PermissionDenied

# When Developers want to Debug something in the Application we use Debug
Write-Debug "This is a Debug Message!" # Not Printed
Write-Host "Debug-Preference 1: " $DebugPreference
$DebugPreference = "Continue"
Write-Host "Debug-Preference 2: " $DebugPreference
Write-Debug "This is a Debug Message!"

# Print a Spinner or a ProgressBar kind of a Text
Write-Host "Progress-Preference: " $ProgressPreference 
for ($i = 1; $i -le 100; $i++ ) {
    Write-Progress -Activity "Search in Progress" -Status "$i% Complete:" -PercentComplete $i
    Start-Sleep -Milliseconds 50
}

# Give a Warning to the User that something might not work correctly or about potential failure but continues execution
Write-Warning "This is an Warning Message"
# Default $WarningPreference  -> Continue so it prints to the Console
Write-Host "Warning-Preference 1 : " $WarningPreference

# Warning Action with a Confirmation:
Write-Warning "Warning with Confirmation?" -WarningAction Inquire
# Confirm
# Continue with this operation?
# [Y] Yes  [A] Yes to All  [H] Halt Command  [S] Suspend  [?] Help

$WarningPreference = "SilentlyContinue"
Write-Host "Warning-Preference 2 : " $WarningPreference
# When you change the value of the $WarningPreference variable, the effect of the Write-Warning command changes again. A value of SilentlyContinue suppresses the warning. A value of Stop displays the warning and then stops execution of the command
$WarningPreference = "Stop"
Write-Host "Warning-Preference 3 : " $WarningPreference
Write-Warning "This is Warning Message"

$WarningPreference = "Continue"
Write-Host "Warning-Preference Reverted to Default : " $WarningPreference