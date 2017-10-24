
$md5 = new-object -TypeName System.Security.Cryptography.MD5CryptoServiceProvider
$utf8 = new-object -TypeName System.Text.UTF8Encoding

$num = 0
$secretkey = "ckczppom$num"
$answernotfound = $true

while ($answernotfound)
    {
        $num++
        $secretkey = "ckczppom$num"
        $hash = [System.BitConverter]::ToString($md5.ComputeHash($utf8.GetBytes($secretkey)))
             
#look at regex ^ this will mean first numbers

    if ($hash -match '^00-00-00')
        {
        Write-Host "$secretkey"
        break                 
        }
    
    }

 $result = $secretkey