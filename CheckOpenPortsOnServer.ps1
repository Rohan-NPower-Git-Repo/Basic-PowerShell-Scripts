Write-Host "Open Ports on the Server:"
Get-NetTCPConnection -State Listen | Select-Object LocalAddress, LocalPort, RemoteAddress, OwningProcess
