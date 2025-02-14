cls

#$table = @( "a", "b", "c","d", "e", "f", "g", "h")
#$table = @("a")
$table = @()

for ($aa = 0; $aa -le ($table.length - 1); $aa ++) {

[string]$out1=$aa
$out1+=" "
$out1+=$table[$aa]
echo $out1
}

echo "---"
$vloz="XX"
$table+=$vloz
$vloz2="yy"
$table+=$vloz2


for ($aa = 0; $aa -le ($table.length - 1); $aa ++) {

[string]$out1=$aa
$out1+=" "
$out1+=$table[$aa]
echo $out1
}





