# A few foreground and background color combinations
$combinations = @(
    @{Foreground = 'Red'; Background = 'Black'},
    @{Foreground = 'Green'; Background = 'Yellow'},
    @{Foreground = 'Blue'; Background = 'White'},
    @{Foreground = 'Cyan'; Background = 'Magenta'},
    @{Foreground = 'White'; Background = 'DarkGray'},
    @{Foreground = 'Yellow'; Background = 'Gray'},
    @{Foreground = 'Magenta'; Background = 'Green'},
    @{Foreground = 'Black'; Background = 'Red'}
)

foreach ($combo in $combinations) {
    Write-Host "Foreground: $($combo.Foreground) - Background: $($combo.Background)" `
        -ForegroundColor $combo.Foreground -BackgroundColor $combo.Background
}

Write-Host "`n"
Write-Host "Text-Color : Cyan | Background-Color : Black " -ForegroundColor "Cyan" -BackgroundColor "Black"
Write-Host "Text-Color : White | Background-Color : Black " -ForegroundColor "White" -BackgroundColor "Black"
Write-Host "Text-Color : DarkRed | Background-Color : Yellow " -ForegroundColor "DarkRed" -BackgroundColor "Yellow"
Write-Host "Text-Color : Black | Background-Color : DarkGray " -ForegroundColor "Black" -BackgroundColor "DarkGray"
Write-Host "Text-Color : Black | Background-Color : Blue " -ForegroundColor "Black" -BackgroundColor "Blue"
Write-Host "Text-Color : Magenta | Background-Color : White " -ForegroundColor "Magenta" -BackgroundColor "White"
Write-Host "Text-Color : DarkBlue | Background-Color : White " -ForegroundColor "DarkBlue" -BackgroundColor "White"
Write-Host "Text-Color : DarkBlue | Background-Color : Cyan " -ForegroundColor "DarkBlue" -BackgroundColor "Cyan"
Write-Host "Text-Color : DarkBlue | Background-Color : Cyan " -ForegroundColor "DarkMagenta" -BackgroundColor "Cyan"
Write-Host "Text-Color : DarkBlue | Background-Color : Cyan " -ForegroundColor "Black" -BackgroundColor "Cyan"
Write-Host "Text-Color : Green | Background-Color : Magenta " -ForegroundColor "Green" -BackgroundColor "Magenta"



