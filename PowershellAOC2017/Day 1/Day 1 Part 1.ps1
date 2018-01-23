$instructions = Get-Content "D:\chris\PowershellAOC2017\Day 1\puzzleinput.txt"
$results = $null
[int]$i = -2
$numbers = [int[]]($instructions -split '' | where {$_ -match '.'}) 


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
for ($i = 0; $i -lt $numbers.Length;$i++)
{
    if ($numbers[$i-1] -eq $numbers[$i])
    {
    }
}