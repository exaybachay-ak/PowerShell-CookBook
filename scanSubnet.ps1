1..254 | % { ping -n 1 "10.0.0.$_" | sls time= }
