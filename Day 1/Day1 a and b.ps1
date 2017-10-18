$input = Get-Content 'S:\Prod\AdventOfCode\ChrisH\2015 Lesson 1\input.txt'

$floor=[int]0

$count = 0

$instructions = $input -split ''


foreach ($instruction in $instructions) 
{
    if($instruction -eq '(') 
    {
        $floor = $floor + 1
    }
    if($instruction -eq ')') 
    {
        $floor = $floor - 1
    }
    if($floor -eq -1)
    {
        Write-Host "The first time Santa hits floor -1 is at position $count"
        break
    }
    $count++ 
}












#$openbracket = ($instructions | select-string -Pattern '[(]' ).matches.Count

#$closedbracket = ($instructions | select-string -Pattern '[)]' ).matches.Count

#$Total = $openbracket - $closedbracket 


#$openbracket = $instructions | measure -Character '('

#$closedbracket = $instructions | measure -Character ')'

#$floor=[int]0




#foreach ($instruction in $instructions) {

#if ( $instruction -eq '(' ) 
#        { $floor = $floor + [int] 1}
#else {$floor = $floor - [int] 1}

#}