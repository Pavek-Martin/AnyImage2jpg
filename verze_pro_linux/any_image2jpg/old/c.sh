#!/usr/bin/lua


file = "abcd.bmp"

file = "qwertyu.jpeg"

print(file)


--print(string.find(file , ".")) -- nefunguje neznamo proc z "." jinak vse funguje jak ma


for aa=1,#file do
znak=string.sub(file,aa,aa)
--print(aa.." "..znak)

if znak == "." then
--print("zde")

file_name = string.sub(file,1,aa-1)
print(file_name.."<")

file_pripona = string.sub(file,aa+1,#file)
print(file_pripona.."<<")

end -- if znak

end --bb







