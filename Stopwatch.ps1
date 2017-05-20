####----> Start a timer to report how long execution takes
$stopwatch = [system.diagnostics.stopwatch]::startNew()

####----> Kill the stopwatch process and record it in a variable
$stopwatch.stop()
[int]$exectime = $stopwatch.elapsed.totalseconds

####----> Report back to the user on time for execution
write-host " "
write-host "Script execution took $exectime seconds."
