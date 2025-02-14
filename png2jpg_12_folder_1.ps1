cls

$magick = ("C:\Program Files (x86)\ImageMagick-7.1.1-Q16\magick.exe")

if (-not (Test-Path $magick)){
Write-Warning "nenalezen soubor $magick"
sleep 5
Exit
}


[string] $pwd2 = Get-Location


$files = Get-ChildItem -path $pwd -Name
#$array_png=@()

#echo "Imagemagick"
foreach($file in $files){


# funkce Substring !!!

$file_jpg = $file.Substring(0,$file.Length -3)
$file_jpg=$file_jpg+"jpg"
echo "$pwd2$file --> $pwd2$file_jpg"

#

$out1='"'+$pwd2+$file+'"'

$out2='"'+$pwd2+$file_jpg+'"'

#& $magick "$out1" "$out2"

}

sleep 10
