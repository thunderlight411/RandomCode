New-Item -Path "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\APPLICATION_NAME" -Force -ErrorAction SilentlyContinue
New-ItemProperty -Path "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\APPLICATION_NAME" -Name "DisplayName" -Value "APPLICATION_DISPLAYNAME" -PropertyType "String" -Force -ErrorAction SilentlyContinue
New-ItemProperty -Path "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\APPLICATION_NAME" -Name "DisplayIcon" -Value "APPLICATION_ICON" -PropertyType "String" -Force -ErrorAction SilentlyContinue
New-ItemProperty -Path "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\APPLICATION_NAME" -Name "DisplayVersion" -Value "1.0" -PropertyType "String" -Force -ErrorAction SilentlyContinue
New-ItemProperty -Path "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\APPLICATION_NAME" -Name "Publisher" -Value "APPLICATION_PUBLISHER" -PropertyType "String" -Force -ErrorAction SilentlyContinue
New-ItemProperty -Path "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\APPLICATION_NAME" -Name "InstallLocation" -Value "APPLICAITON_PATH" -PropertyType "String" -Force -ErrorAction SilentlyContinue
New-ItemProperty -Path "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\APPLICATION_NAME" -Name "UninstallString" -Value 'APPLICATION_UNINSTALL_REMOVE_COMMAND' -PropertyType "String" -Force -ErrorAction SilentlyContinue
