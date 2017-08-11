<# 
  Leveraging Powershell pipeline with the percent character
  https://stackoverflow.com/questions/22846596/what-does-percent-do-in-powershell
#>

####----> display contents of every file in a directory
gci | %{ cat $_.name }

####----> stitch all files in a directory together
gci | %{ cat $_.name } | out-file bla.txt
