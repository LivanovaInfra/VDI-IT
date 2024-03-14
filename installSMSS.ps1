#Declare installation source.
$SourceURL = 'https://download.microsoft.com/download/7/7/3/7738e337-ed99-40ea-b8ae-f639162c83c3/'

#Declase Destination to download binaries.
$dest = "C:\Temp\"

#Declare Installation Binaries
$App = 'SSMS-Setup-ENU.exe'

#Download binaries
Write-host "Downloading $App binaries."
Invoke-WebRequest -uri ($SourceURL + $App) -OutFile ($dest + $App)

#Install App.
Write-host "Installing $App."
start-process -FilePath ($dest + $App) -ArgumentList "/install /quiet /norestart" -Wait