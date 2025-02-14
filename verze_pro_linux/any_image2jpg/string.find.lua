file_name = 'abcd.bmp'
print(file_name)
print("12345678")

print("a "..string.find(file_name, "a"))
print("b "..string.find(file_name, "b"))
print("c "..string.find(file_name, "c"))
print("d "..string.find(file_name, "d"))
print(". "..string.find(file_name, ".")) -- znak "." vychazi blbost ?
print("b "..string.find(file_name, "b"))
print("m "..string.find(file_name, "m"))
print("p "..string.find(file_name, "p"))

print(".b "..string.find(file_name, ".b")) -- chyba
print("d. "..string.find(file_name, "d.")) -- dobre

print("-------------------------")

-- nahradni reseni problemu
for i = 1,#file_name do
znak=string.sub(file_name,i,i)
print(i.." "..znak)

if znak == "." then
nalezeno = i
end

end

print('znak "." nalezen na  pozici '..nalezeno)
