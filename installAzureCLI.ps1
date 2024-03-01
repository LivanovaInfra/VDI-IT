#Declare installation source.
$SourceURL = 'https://azcliprod.blob.core.windows.net/msi/'

#Declase Destination to download binaries.
$dest = "C:\Temp\"

#Declare Installation Binaries
$AzureCli = 'azure-cli-2.51.0-x64.msi'

#Download binaries
Write-host "Downloading Azure Cli binaries."
Invoke-WebRequest -uri ($SourceURL + $AzureCli) -OutFile ($dest + $AzureCli)

#Install Azure Cli.
Write-host "Installing Azure Cli."
start-process msiexec.exe -Wait -ArgumentList '/i c:\temp\azure-cli-2.51.0-x64.msi /quiet'