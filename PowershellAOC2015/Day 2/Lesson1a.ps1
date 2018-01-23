$instructions = get-content 'S:\Prod\AdventOfCode\ChrisH\2015 Lesson 1\PowershellAOC2015\Day 2\puzzleinput.txt'

$total = $null

function get-CalculateSurfaceArea($instruction) 
{
    $dimensions = ([int[]]($instruction -split 'x')) | Sort-Object

    [int]$height = $dimensions[0]
    [int]$width = $dimensions[1]
    [int]$length = $dimensions[2]

    $measurement1 = ($height * $width)
    $measurement2 = ($width * $length)
    $measurement3 = ($height * $length)

    [int]$calc1 = 2 * $measurement1
    [int]$calc2 = 2 * $measurement2
    [int]$calc3 = 2 * $measurement3


    [int]$surfacearea = $calc1 + $calc2 + $calc3 + $measurement1
    $surfacearea | Write-Output

}


<#Foreach ($instruction in $instructions)
    {
    $dimensions = ([int[]]($instruction -split 'x')) | Sort-Object

    [int]$height = $dimensions[0]
    [int]$width = $dimensions[1]
    [int]$length = $dimensions[2]

    $measurement1 = ($height * $width)
    $measurement2 = ($width * $length)
    $measurement3 = ($height * $length)

    [int]$calc1 = 2 * $measurement1
    [int]$calc2 = 2 * $measurement2
    [int]$calc3 = 2 * $measurement3

    $extra = ($measurement1,$measurement2,$measurement3 | Measure-Object -Minimum).Minimum

    [int]$surfacearea = $calc1 + $calc2 + $calc3 + $extra

    $total += $surfacearea

    }#>
    $totalarea = 0
    Foreach ($instruction in $instructions)
    {
        $totalarea += get-CalculateSurfaceArea -instruction $instruction

    }
    
    Write-Host "The total surface area required is $totalarea square feet"