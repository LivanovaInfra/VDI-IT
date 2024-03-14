#Declare installation source.
$SourceURL = 'https://vscode.download.prss.microsoft.com/dbazure/download/stable/863d2581ecda6849923a2118d93a088b0745d9d6/'

#Declase Destination to download binaries.
$dest = "C:\Temp\"

#Declare Installation Binaries
$App = 'VSCodeSetup-x64-1.87.2.exe'

#Download binaries
Write-host "Downloading $App binaries."
Invoke-WebRequest -uri ($SourceURL + $App) -OutFile ($dest + $App)

#Install App.
Write-host "Installing $App."
start-process -FilePath ($dest + $App) -ArgumentList "/VERYSILENT /MERGETASKS=!runcode" -Wait
