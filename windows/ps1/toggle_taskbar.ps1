# Set variables to indicate value and key to set
param($option)

# Constants
$RegistryPath = 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\StuckRects3'
$Name         = 'Settings'

# Get current registry value
$Value = (Get-ItemProperty -Path $RegistryPath).$Name
$HexBefore = ($Value | % { '{0:X2}' -f $_ }) -join ' '

# Choose update value based on input
$Update = 0x7A
If ($option -eq "hide") {
    $Update = 0x7B
}

# Create the updated value
$Value[8] = $Update
$HexAfter = ($Value | % { '{0:X2}' -f $_ }) -join ' '

# Output before and after values
Write-Host $HexBefore.Substring(0, 38) "..."
Write-Host $HexAfter.Substring(0, 38) "..."

# Set updated registry value
Set-ItemProperty -Path $RegistryPath -Name $Name -Value $Value

# Restart explorer
Stop-Process -f -ProcessName explorer

# Reference
# https://www.makeuseof.com/windows-11-hide-taskbar-shortcuts/
