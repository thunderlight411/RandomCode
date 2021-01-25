            ## Create Registry keys for installation Check and provide uninstall key for uninstall
            If ($ScriptResult.Continue)
            {
                Write-Log -Type 'Information' -Message ('Applying registry keys for installation check')
                New-Item -Path "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\Pearson" -Force -ErrorAction SilentlyContinue
                New-ItemProperty -Path "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\Pearson" -Name "DisplayName" -Value "Pearson Market Leader" -PropertyType "String" -Force -ErrorAction SilentlyContinue
                New-ItemProperty -Path "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\Pearson" -Name "DisplayIcon" -Value "C:\Program Files (x86)\Pearson\intermediate\pearson.ico" -PropertyType "String" -Force -ErrorAction SilentlyContinue
                New-ItemProperty -Path "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\Pearson" -Name "DisplayVersion" -Value "3.0" -PropertyType "String" -Force -ErrorAction SilentlyContinue
                New-ItemProperty -Path "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\Pearson" -Name "Publisher" -Value "Pearson Market Leader" -PropertyType "String" -Force -ErrorAction SilentlyContinue
                New-ItemProperty -Path "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\Pearson" -Name "InstallLocation" -Value "C:\Program Files (x86)\Pearson" -PropertyType "String" -Force -ErrorAction SilentlyContinue
                New-ItemProperty -Path "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\Pearson" -Name "UninstallString" -Value 'powershell -executionPolicy bypass -WindowStyle Hidden -Command Remove-Item -Path ''C:\Program Files (x86)\Pearson'' -Recurse; remove-item -path HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\Pearson' -PropertyType "String" -Force -ErrorAction SilentlyContinue

            # End of installation sequence
            If ($ScriptResult.Continue) { $ScriptResult.InstallSuccessful = $True }
            }
