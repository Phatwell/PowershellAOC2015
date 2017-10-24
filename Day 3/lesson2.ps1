$inps = get-content 'X:\chris\Documents\Powershell\Powershell2015\Day 3\DAY 3\puzzleinput.txt'
$inplength = $inp.Length
$i=0
$rs = $null
$sa = $null
$say = 0
$sax = 0
$rsy = 0
$rsx = 0
$sahousepresent = @{}
$rshousepresent = @{}
#splitting the instructions

$instructions = $inps -split ''

#this for each loop gets every other character in the split instructions

foreach ($instruction in $instructions) 
{

    If(($half=$i%2) -eq ($half+$half))

        {

        $rs += $instruction
        
        }

    else
        
        {
        $sa += $instruction
        
        }

        $i ++
        Write-Host "$i"

}

$sa = $sa -split ''

foreach ($sa in $sa)
    {
    if ($sa -eq '^')

        {
        $say = $say + 1
        }

    if ($sa -eq '>')

        {
        $sax = $sax + 1
        }

    if ($sa -eq 'v')

        {
        $say = $say - 1
        }

    if ($sa -eq '<')

        {
        $sax = $sax - 1
        }

$sahousepresent."$sax.$say" = 1

    }

    $sacoordinates = "$sax.$say"

$rs = $rs -split ''

foreach ($rs in $rs)
    {
    if ($rs -eq '^')

        {
        $rsy = $rsy + 1
        }

    if ($rs -eq '>')

        {
        $rsx = $rsx + 1
        }

    if ($rs -eq 'v')

        {
        $rsy = $rsy - 1
        }

    if ($rs -eq '<')

        {
        $rsx = $rsx - 1
        }

$sahousepresent."$rsx.$rsy" = 1

    }

$amountofhouses = $sahousepresent.count

Write-host "The amount of houses receiving a present is $amountofhouses"