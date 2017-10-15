$instructions = get-content 'X:\chris\Documents\Powershell\Powershell2015\Day2 Lesson1\puzzleinput.txt'

$TotalRibbon = $null

Foreach ($instruction in $instructions)
    {
    
    $dimensions = $instruction -split 'x'

    [int]$height = $dimensions[0]
    [int]$width = $dimensions[1]
    [int]$length = $dimensions[2]

    $measurements = $height,$width,$length

    $smallperim = $measurements | Sort-Object -Descending | Select -Last 2

    [int]$ribbonwrap = [int]$smallperim[0] + [int]$smallperim[0] + [int]$smallperim[1] + [int]$smallperim[1]

    $calc = $height * $width * $length

    $Ribbon = $calc + $ribbonwrap
    
    $TotalRibbon += $Ribbon

    }

Write-Host "The total feet of Ribbon required is $TotalRibbon"
