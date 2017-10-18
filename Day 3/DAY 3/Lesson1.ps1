$instructions = get-content 'S:\Prod\AdventOfCode\ChrisH\2015 Lesson 1\PowershellAOC2015\Day 3'

[int]$count = 1

foreach ($instruction in $instructions)
    {
    $count ++

    $housecount = $count
    }
Write-Host "Houses receiving a present is $housecount"