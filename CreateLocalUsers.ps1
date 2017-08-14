$username = "bla"
$password = "Password.123!"
$computers = Get-Content "c:\Users\CHANGETHIS\serverlist.txt"
# OR;
# $computers = Import-CSV c:\serverlist.csv | select Server
Foreach ($computer in $computers) {
   $users = $null
   $computer = [ADSI]“WinNT://$computer”
   Try {
      $users = $computer.psbase.children | select -expand name  
      if ($users -like $username) {
         Write-Host "$username already exists"
      } Else {
         $user_obj = $computer.Create(“user”, “$username”)
         $user_obj.SetPassword($password)
         $user_obj.SetInfo()
         $user_obj.Put(“description”, “$username”)
         $user_obj.SetInfo()
         $user_obj.psbase.invokeset(“AccountDisabled”, “False”)
         $user_obj.SetInfo()
         $users = $computer.psbase.children | select -expand name
         if ($users -like $username) {
            Write-Host "$username has been created on $($computer.name)"
         } Else {
            Write-Host "$username has not been created on $($computer.name)"
         }
      }
   } Catch {
      Write-Host "Error creating $username on $($computer.path):  $($Error[0].Exception.Message)"
   }
}
