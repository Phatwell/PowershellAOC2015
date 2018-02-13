$result = $null
$instructions = Get-Content "D:\chrishat\PowershellAOC2015\PowershellAOC2017\Day 2\puzzleinput.txt.txt"
$instructionssplits = $instructions -split ([Environment]::NewLine)



foreach($instructionssplit in $instructionssplits)
{

[int[]]$numbers = $instructionssplit -split '\s+'

[int[]]$numbersorted = $numbers | sort -Descending 

$result += $numbersorted[0] - $numbersorted[-1]

}


Write-Host "The checksum of the spreadsheet is $result"





    #foreach horizontal line.
    #split each number (not individual)
    #sort the number highest and lowest e.g 440, 13
    #work out difference, add to variable 
    #do same for all. 
    #add at end.


