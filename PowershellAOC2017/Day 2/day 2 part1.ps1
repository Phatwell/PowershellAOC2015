$instructions = Get-Content "D:\chrishat\PowershellAOC2015\PowershellAOC2017\Day 2\puzzleinput.txt.txt"
$instructionssplit = $instructions -split ([Environment]::NewLine)



foreach($instruction in $instructions)
[int[]]$splitinstructions = $instructions -split '\s+'


    {
        $sortedno = $splitinstruction | Sort-Object -Descending
            



    }







    #foreach horizontal line.
    #split each number (not individual)
    #sort the number highest and lowest e.g 440, 13
    #work out difference, add to variable 
    #do same for all. 
    #add at end.


