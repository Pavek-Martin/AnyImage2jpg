

file = "abcd.bmp"
print(file)


print(string.find(file , "a"))
print(string.find(file , "b"))
print(string.find(file , "c"))
print(string.find(file , "d"))
print(string.find(file , ".")) -- nefunguje neznamo proc "." jinak vse funguje jak ma


print("--------------")


for aa=1,#file do
znak=string.sub(file,aa,aa)
print(aa.." "..znak)

if znak == "." then
print("zde")
end

end --bb






