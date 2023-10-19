#Changing to install mode.
Change user /install

#Declare installation source.
$SourceURL = 'https://raw.githubusercontent.com/LivanovaInfra/VDI-IT/main/'

#Declase Destination to download binaries.
$dest = "C:\Temp\"

#Declare Installation Binaries
$7Zip = '7z2301-x64.exe'

#Download binaries
Invoke-WebRequest -uri ($SourceURL + $7Zip) -OutFile ($dest + $7Zip)

#Install 7zip.
start-process -FilePath ($dest + $7Zip) -ArgumentList “/S" -Wait

#Write-host "Changing to execute mode"
Change user /execute
