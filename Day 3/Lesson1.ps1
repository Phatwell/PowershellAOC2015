$inp = get-content 'S:\Prod\AdventOfCode\ChrisH\2015 Lesson 1\PowershellAOC2015\Day 3\DAY 3\puzzleinput.txt'

$x = 0
$y = 0

$housepresent = @{}

$instructions = $inp -split ''

foreach ($instruction in $instructions)
    {
    if ($instruction -eq '^')

        {
        $y = $y + 1
        }

    if ($instruction -eq '>')

        {
        $x = $x + 1
        }

    if ($instruction -eq 'v')

        {
        $y = $y - 1
        }

    if ($instruction -eq '<')

        {
        $x = $x - 1
        }

$housepresent."$x.$y" = 1

    }

$coordinates = "$x.$y"

$AmountofHouses = $housepresent.Count

write-host "The amount of houses receiving a present is..." -NoNewline -ForegroundColor Yellow

write-host "$AmountofHouses" -ForegroundColor Green