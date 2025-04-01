# Accept User Message 
Write-Host "Enter the Message to log : "
$msg = Read-Host

# Prefix with Date and Error Type 
$msgToLog = "$(Get-Date)  :  ERROR  -  $msg"

# Check Message by displaying on console
Write-Host $msgToLog  -ForegroundColor DarkRed -BackgroundColor Yellow

# Register Source to the Application Log
New-EventLog -LogName Application -Source 'NP-Chat-App'

# Write log to Application Logs
Write-EventLog -LogName Application -EventID 2222 -EntryType Error -Source 'NP-Chat-App' -Message $msgToLog

# Get the Events printed by Source
Get-EventLog -LogName Application -Source 'NP-Chat-App'