<#
  https://stackoverflow.com/questions/29759854/how-to-connect-to-tcp-socket-with-powershell-to-send-and-receive-data
  Test network resources
#>
$tcpClient = New-Object System.Net.Sockets.TCPClient
$tcpClient.Connect("$scanIp",445) > $null
  $SMBCheck = $tcpClient.Connected
  if ($SMBCheck -eq "True"){
    write-host "Port 445 is listening for $scanIp"
  }
  else{
    write-host "$scanIp is not listening to port 445"
  }
