#Declare installation source.
$SourceURL = 'https://download.microsoft.com/download/8/8/0/880BCA75-79DD-466A-927D-1ABF1F5454B0/'

#Declase Destination to download binaries.
$dest = "C:\Temp\"

#Declare Installation Binaries
$App = 'PBIDesktopSetup_x64.exe'

#Download binaries
Write-host "Downloading $App binaries."
Invoke-WebRequest -uri ($SourceURL + $App) -OutFile ($dest + $App)

#Install App.
Write-host "Installing $App."
start-process -FilePath ($dest + $App) -ArgumentList "-S ACCEPT_EULA=1" -Wait