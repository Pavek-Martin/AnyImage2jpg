

file = "abcd.bmp"

file = "qwertyu.jpeg"

print(file)


--print(string.find(file , ".")) -- nefunguje neznamo proc "." jinak vse funguje jak ma



for aa=1,#file do
znak=string.sub(file,aa,aa)
print(aa.." "..znak)

if znak == "." then
print("zde")
end

end --bb






