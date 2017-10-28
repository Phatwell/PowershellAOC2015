$strings = get-content 'X:\chris\Documents\Powershell\Powershell2015\Day 5\puzzleinput.txt'

$strings -split "`n" | ?{ $_ -match "(..).*\1" -and $_ -match "(.).\1" } | measure | % count