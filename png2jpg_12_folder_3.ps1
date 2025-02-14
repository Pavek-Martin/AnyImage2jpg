cls

$magick = ("C:\Program Files (x86)\ImageMagick-7.1.1-Q16\magick.exe")

if (-not (Test-Path $magick)){
Write-Warning "nenalezen soubor $magick"
sleep 5
Exit
}


[string] $pwd2 = Get-Location


$pripony_obrazku = @("png", "tiff", "jpeg") # co chybi tak jeste doplnit
$znak_rozdelovac = "."

<#
for ($i = 0; $i -le ($pripony_obrazku.length - 1); $i ++) {
$pripony_obrazku[$i]
}
#>


$files = Get-ChildItem -path $pwd -Name


#echo "Imagemagick"
foreach($file in $files){

#
echo $file

$delka_file = $file.Length
#echo $delka_file

#$znak_rozdelovac = "."

$nalezeno_rozdelovac = $file.IndexOf($znak_rozdelovac)
#echo $nalezeno_rozdelovac

$file_name = $file.Substring(0,$nalezeno_rozdelovac)
echo $file_name

$file_pripona = $file.Substring($nalezeno_rozdelovac + 1,$delka_file - $nalezeno_rozdelovac - 1 )
echo $file_pripona

# kontrola jestli pripona je obrazek aby se nesnazil convertovat avi do jpg apod.
# pusti k dalsimu zpracovani jenom to co je v poly $pripony_obrazku
for ($i = 0; $i -le ($pripony_obrazku.length - 1); $i ++) {


#$test = "test"
if ($file_pripona -like $pripony_obrazku[$i] ) {

echo $file

}
}
#



#$file_jpg = $file.Substring(0,$file.Length -3)
#$file_jpg=$file_jpg+"jpg"


#echo "$pwd2$file --> $pwd2$file_jpg"

#

#$out1='"'+$pwd2+$file+'"'

#$out2='"'+$pwd2+$file_jpg+'"'

#& $magick "$out1" "$out2"

}

# sleep 10
