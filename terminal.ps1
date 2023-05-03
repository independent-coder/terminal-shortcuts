# Create/Open key for "Open in Terminal" context menu option for directories
New-Item -Path "HKCR:\Directory\Background\shell\Open in Terminal" -Force | Out-Null

# Set default value for "Open in Terminal" key
New-ItemProperty -Path "HKCR:\Directory\Background\shell\Open in Terminal" -Name "" -Value "Open in Terminal" -Force | Out-Null

# Set "Icon" value for "Open in Terminal" key
New-ItemProperty -Path "HKCR:\Directory\Background\shell\Open in Terminal" -Name "Icon" -Value "%SystemRoot%\system32\imageres.dll,-5324" -Force | Out-Null

# Create/Open key for command to execute when "Open in Terminal" is clicked
New-Item -Path "HKCR:\Directory\Background\shell\Open in Terminal\command" -Force | Out-Null

# Set default value for command key
New-ItemProperty -Path "HKCR:\Directory\Background\shell\Open in Terminal\command" -Name "" -Value "cmd.exe /k cd \"%V\"" -Force | Out-Null

Write-Host "Open in Terminal context menu option added successfully."
