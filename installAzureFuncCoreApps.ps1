#Declare installation source.
$SourceURL = 'https://github.com/Azure/azure-functions-core-tools/releases/download/4.0.5571/'

#Declase Destination to download binaries.
$dest = "C:\Temp\"

#Declare Installation Binaries
$App = 'func-cli-4.0.5571-x64.msi'

#Download binaries
Write-host "Downloading $App binaries."
Invoke-WebRequest -uri ($SourceURL + $App) -OutFile ($dest + $App)

#Install App.
Write-host "Installing $App"
start-process msiexec.exe -Wait -ArgumentList '/i c:\temp\func-cli-4.0.5571-x64.msi /quiet'