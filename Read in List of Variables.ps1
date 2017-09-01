$hosts = (Read-host -Prompt 'Enter a list of hosts:').split(',') | ForEach-Object {$_.trim()}
