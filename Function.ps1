#prepare the function
function DoSomething{
  write-host "Here is a function doing some stuff"
}

#call the function
DoSomething

if($stuff -eq "1"){
  DoSomething
}

else{
  write-host "Doing nothing"
}

function drawButton($name,$text,$color,$width,$height,$locationx,$locationy){
	$name = New-Object system.windows.Forms.Button
	$name.Text = "$text"
	$name.ForeColor = "#$color"
	$name.width = "$width"
	$name.height = "$height"
	$name.location = new-object system.drawing.point($locationx,$locationy)
	$name.font = "Microsoft Sans Serif,10"
	$Form.controls.Add($name)
}

drawButton Name Text Color 25 25 25 25
