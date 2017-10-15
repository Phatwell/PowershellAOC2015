$instructions = get-content 'X:\chris\Documents\Powershell\Powershell2015\Day 3\puzzleinput.txt'

[int]$count = 1

foreach ($instruction in $instructions)
    {
    $count ++

    $housecount = $count
    }
Write-Host "Houses receiving a present is $housecount"