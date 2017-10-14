#$instructions = get-content 'X:\chris\Documents\Powershell\Powershell2015\Day2 Lesson1\puzzleinput.txt'

#Foreach ($instruction in $instructions)
  #  {

    $instruction = '2x3x4'

    $dimensions = $instruction -split 'x'

    $smallperim = $dimensions | Sort-Object Number

    [int]$height = $dimensions[0]
    [int]$width = $dimensions[1]
    [int]$length = $dimensions[2]



    #$measurement1 = ($height * $width)
    #$measurement2 = ($width * $length)
    #$measurement3 = ($height * $length)

    #[int]$calc1 = 2 * $measurement1
   # [int]$calc2 = 2 * $measurement2
    #[int]$calc3 = 2 * $measurement3

    #$extra = ($measurement1,$measurement2,$measurement3 | Measure-Object -Minimum).Minimum

    #[int]$surfacearea = $calc1 + $calc2 + $calc3 + $extra
#
    #$total += $surfacearea

   # }