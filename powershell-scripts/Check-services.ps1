# 1. List ALL services with status
Write-Host "`n[1] Listing all services..." -ForegroundColor Yellow
Get-Service | Select-Object Name, DisplayName, Status, StartType

# ---------------------------------------------------------

# 2. List ONLY stopped services
Write-Host "`n[2] Listing stopped services..." -ForegroundColor Yellow
Get-Service | Where-Object {$_.Status -eq "Stopped"} |
Select-Object Name, DisplayName, StartType

# ---------------------------------------------------------

# 3. List Automatic services that are NOT running (Very Important)
Write-Host "`n[3] Automatic services not running..." -ForegroundColor Yellow
Get-Service | Where-Object {$_.StartType -eq "Automatic" -and $_.Status -ne "Running"} |
Select-Object Name, DisplayName, Status

# ---------------------------------------------------------

# 4. Check status of critical Windows services
Write-Host "`n[4] Checking critical services..." -ForegroundColor Yellow

$CriticalServices = @(
    "Spooler",      # Print Spooler
    "W32Time",      # Windows Time
    "BITS",         # Background Intelligent Transfer Service
    "LanmanServer", # Server service
    "LanmanWorkstation", # Workstation service
    "WinRM",        # Windows Remote Management
    "Dnscache",     # DNS Client
    "EventLog"      # Windows Event Log
)

Get-Service -Name $CriticalServices |
Select-Object Name, Status, StartType

# ---------------------------------------------------------

# 5. Start a stopped service (Example – SAFE CHECK)
Write-Host "`n[5] Attempting to start stopped critical services..." -ForegroundColor Yellow

Get-Service -Name $CriticalServices |
Where-Object {$_.Status -eq "Stopped"} |
Start-Service -WhatIf

# NOTE: Remove -WhatIf after testing if you really want to start services

# ---------------------------------------------------------

# 6. Restart a service (Example)
# Restart-Service -Name Spooler -Force

# ---------------------------------------------------------

# 7. Get service details using WMI (startup account, path)
Write-Host "`n[6] Detailed service information..." -ForegroundColor Yellow

Get-WmiObject Win32_Service |
Select-Object Name, State, StartMode, StartName, PathName |
Where-Object {$_.StartMode -eq "Auto"}

# ---------------------------------------------------------
