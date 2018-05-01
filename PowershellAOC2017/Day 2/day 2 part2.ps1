$results = $null
$instructions = Get-Content "D:\chrishat\PowershellAOC2015\PowershellAOC2017\Day 2\puzzleinput.txt.txt"
$rows = $instructions -split ([Environment]::NewLine)
$firstnumber = $null
$secondnumber = $null
$calcresult = $null
$calc = $null
$sortednumbers = $null



foreach($row in $rows)
    {

        [int[]]$numbers = $row -split '\s+'

        $sortednumbers = $numbers | sort -Descending

        
        foreach ($firstnumber in $sortednumbers)
        {
            foreach($secondnumber in $sortednumbers)
                {
                
                if($firstnumber -ne $secondnumber)
                {
                
                $calcresult = $firstnumber%$secondnumber

                    if($calcresult -eq 0)
                        {
                        $calc = $firstnumber/$secondnumber

                        $results += $calc
                        }
                    else{}

                }

                else{}

                   
                        
                 }  
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
     #   second array 


     #modulas the numbers (how many left over needs to be 0)
     #sort the numbers

     #guessed 23 was wrong