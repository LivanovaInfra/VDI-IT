#Declare installation source.
$SourceURL = 'https://download.visualstudio.microsoft.com/download/pr/f7f831c9-ee1e-4501-bfc8-d3750aeb0e76/8a7dce2defcd92c77e147603fce87528/'

#Declase Destination to download binaries.
$dest = "C:\Temp\"

#Declare Installation Binaries
$App = 'dotnet-sdk-7.0.407-win-x86.exe'

#Download binaries
Write-host "Downloading $App binaries."
Invoke-WebRequest -uri ($SourceURL + $App) -OutFile ($dest + $App)

#Install 7zip.
Write-host "Installing $App."
start-process -FilePath ($dest + $App) -ArgumentList "/S" -Wait