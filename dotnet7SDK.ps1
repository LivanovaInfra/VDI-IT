#Declare installation source.
$SourceURL = 'https://raw.githubusercontent.com/LivanovaInfra/VDI-IT/main/'

#Declase Destination to download binaries.
$dest = "C:\Temp\"

#Declare Installation Binaries
$7Zip = '7z2301-x64.exe'

#Download binaries
Write-host "Downloading 7zip binaries."
Invoke-WebRequest -uri ($SourceURL + $7Zip) -OutFile ($dest + $7Zip)

#Install 7zip.
Write-host "Installing 7zip."
start-process -FilePath ($dest + $7Zip) -ArgumentList "/S" -Wait

#Changing to execute mode.
#Write-host "Changing usermode to execute."
#Change user /execute
