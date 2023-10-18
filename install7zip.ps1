
#Write-host "Changing to install mode"
#Change user /install

Write-host "Installing 7zip" 
start-process -FilePath "$destination\7z2301-x64.exe" -ArgumentList “/S" -Wait


#Write-host "Changing to execute mode"
#Change user /execute

