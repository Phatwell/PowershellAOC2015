$instructions = Get-Content "D:\chris\PowershellAOC2017\Day 1\puzzleinput.txt"
$results = $null
[int]$i = -2
$numbers = [int[]]($instructions -split '' | where {$_ -match '.'}) 

[int]$numberofintegers = $numbers.Length
$amount = $numberofintegers/2



foreach ($number in $numbers)
    {
    
        $i++
            if ($number -eq $numbers[$i])
                {

                $results += $number

                }

            else 
                {
                }
    
    }

Write-host "The results are $results"




#universal to lanuguages
#for ($i = 0; $i -lt $numbers.Length;$i++)
#{
#    if ($numbers[$i-1] -eq $numbers[$i])
#    {
#    }
#}



#PS S:\>  (1 + (10/2)) % 10
#6

#PS S:\>  (9 + (10/2)) % 10
#4
