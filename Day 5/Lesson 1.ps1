$strings = get-content 'X:\chris\Documents\Powershell\Powershell2015\Day 5\puzzleinput.txt'

$vowels = 'a','e','i','o','u'

$strings -split "`n" | ?{ $_ -match "(.*[$vowels]){3}" -and $_ -match "(.)\1" -and $_ -notmatch "(ab|cd|pq|xy)" } | measure | % count

 

        