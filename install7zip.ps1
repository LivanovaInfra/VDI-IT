#Changing to install mode.
Change user /install

#Declare installation source.
$Source-7Zip = 'https://github.com/LivanovaInfra/VDI-IT/blob/main/7z2301-x64.exe'

#Install 7zip.
start-process -FilePath "$Source-7Zip" -ArgumentList “/S" -Wait

#Write-host "Changing to execute mode"
Change user /execute

