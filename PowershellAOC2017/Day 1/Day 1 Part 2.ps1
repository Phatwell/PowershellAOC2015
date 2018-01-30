$instructions = Get-Content "D:\chrishat\PowershellAOC2015\PowershellAOC2017\Day 1\puzzleinput.txt"
$results = $null
$results2 = $null
[int]$i = -1
$numbers = [int[]]($instructions -split '' | where {$_ -match '.'}) 


foreach ($number in $numbers)
    {
        $i++
            if ($i -lt 1038)
                {
                    if($number -eq $numbers[$i+1037])
                        {
                        $results += $number
                        }
                    Else
                        {
                        }
                }
            elseif($i -gt 1037)
                {
                    if($number -eq $numbers[$i-1037])
                        {
                        $results2 += $number
                        }
                    Else
                        {
                        }
                }               

}

$Answer = $results + $results2

Write-Host "The answer is $answer"











#[int]$numberofintegers = $numbers.Length
#$amount = $numberofintegers/2



#foreach ($number in $numbers)
#    {
#    
#        $i++
#            if ($number -eq $numbers[$i+1037])
#                {
#
#                $results += $number
#
#                }
#
#            else 
#                {
#                }
#    
#    }
#
#Write-host "The results are $results"


#2074 numbers in the list





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
