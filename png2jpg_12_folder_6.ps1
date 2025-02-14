cls

$magick = ("C:\Program Files (x86)\ImageMagick-7.1.1-Q16\magick.exe")

if (-not (Test-Path $magick)){
Write-Warning "nenalezen soubor $magick"
sleep 5
Exit
}


[string] $pwd2 = Get-Location


$pripony_obrazku = @("png", "tif", "jpeg", "pcx") # co chybi tak jeste doplnit
$znak_rozdelovac = "."

$pocitadlo = 1

$files = Get-ChildItem -path $pwd -Name


echo "Imagemagick for Windows"
foreach($file in $files){

#
#echo $file

$delka_file = $file.Length
#echo $delka_file

$nalezeno_rozdelovac = $file.IndexOf($znak_rozdelovac)
#echo $nalezeno_rozdelovac

$file_name = $file.Substring(0,$nalezeno_rozdelovac)
#echo $file_name

$file_pripona = $file.Substring($nalezeno_rozdelovac + 1,$delka_file - $nalezeno_rozdelovac - 1 )
#echo $file_pripona

# kontrola jestli pripona je obrazek aby se nesnazil convertovat avi do jpg apod. paklize je v adresari mix
# pusti k dalsimu zpracovani jenom to co je v poly $pripony_obrazku
# paklize je pripona obrazku napr. "nazev.PNG" tak ho bere taky nerozlisuje velka a mala pismena
# tzn. ze pole pripony_obrazku nemusi vypadat treba takto @("png", "tiff", "jpeg" ,"PNG", "TIFF", "JPEG")
for ($aa = 0; $aa -le ($pripony_obrazku.length - 1); $aa ++) {
if ($file_pripona -like $pripony_obrazku[$aa] ) {

#echo $file"<<"

#echo $pocitadlo" -- pocitadlo"
#$pocitadlo++

#echo $file

$delka_file = $file.Length
#echo $delka_file

$nalezeno_rozdelovac = $file.IndexOf($znak_rozdelovac)
#echo $nalezeno_rozdelovac


$file_name = $file.Substring(0,$nalezeno_rozdelovac)
#echo $file_name

$file_pripona = $file.Substring($nalezeno_rozdelovac + 1,$delka_file - $nalezeno_rozdelovac - 1 )
#echo $file_pripona



echo "$pwd2$file --> $pwd2$file"


#$out1='"'+$pwd2+$file+'"'

#$out2='"'+$pwd2+$file_jpg+'"'

#& $magick "$out1" "$out2"


}
}

}

# sleep 10
