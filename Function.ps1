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
