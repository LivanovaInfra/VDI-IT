#Changing to install mode.
Change user /install

#Declare installation source.
$SourceURL = 'https://github.com/LivanovaInfra/VDI-IT/blob/main/'

#Declare Installation Binaries
$7Zip = '7z2301-x64.exe'

#Download binaries
Invoke-WebRequest ($sourceURL + $7Zip) -OutFile c:\temp\$7Zip 

#Install 7zip.
start-process -FilePath c:\temp\$7zip -ArgumentList “/S" -Wait

#Write-host "Changing to execute mode"
Change user /execute


