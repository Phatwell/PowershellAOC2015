$results = $null
$instructions = Get-Content "D:\chrishat\PowershellAOC2015\PowershellAOC2017\Day 2\puzzleinput.txt.txt"
$rows = $instructions -split ([Environment]::NewLine)



foreach($row in $rows)
    {

        [int[]]$numbers = $row -split '\s+'
        
    }
    
    



#[int[]]$numbersorted = $numbers | sort -Descending 

#$result += $numbersorted[0] - $numbersorted[-1]



Write-Host "The checksum of the spreadsheet is $results"



        foreach ($first in $numbers)
        {
            foreach ($second in ($numbers | ? {$_ -ne $first}))
            {
            }
        }




    #foreach horizontal line.
    #split each number (not individual)
    #sort the number highest and lowest e.g 440, 13
    #work out difference, add to variable 
    #do same for all. 
    #add at end.


    #if x -eq x.trim then use it. if not dont
    # 1 foreach numnber 
        second array 
