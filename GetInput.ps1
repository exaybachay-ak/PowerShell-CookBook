$userinput = Read-Host -prompt "What would you like to do?"

#Read in an array
#https://copysave.wordpress.com/2010/07/02/read-host-values-into-an-array/
$hosts = (Read-host -Prompt 'Enter a list of hosts:').split(',') | ForEach-Object {$_.trim()}
