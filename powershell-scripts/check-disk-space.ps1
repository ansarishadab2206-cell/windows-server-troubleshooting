# Check disk space on server
Get-PSDrive -PSProvider FileSystem |
Select-Object Name,
@{Name="UsedGB";Expression={[math]::Round($_.Used/1GB,2)}},
@{Name="FreeGB";Expression={[math]::Round($_.Free/1GB,2)}}

