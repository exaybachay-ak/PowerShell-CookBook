param (
    [Switch]$Local,
    [Switch]$Network,
    [Switch]$Both
)

#param (
#    [Parameter(Mandatory=$false)][string]$Local,
#    [Parameter(Mandatory=$false)][string]$Network,
#    [Parameter(Mandatory=$false)][string]$Both
#)

if(!$Local -and !$Network -and !$Both){
	write-host "You haven't selected anything!!!"
}

if($Local){
	write-host "You set the local param"
}


if($Network){
	write-host "You set the network param"
}



if($Both){
	write-host "You set the both param"
}
