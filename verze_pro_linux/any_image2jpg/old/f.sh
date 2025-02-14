#!/usr/bin/lua


files = {}

Hnd, ErrStr = io.popen("ls")
if Hnd then
for line in Hnd:lines() do
table.insert(files, line)
end
Hnd:close()
end


znak_rozdelovac = "."

--print(string.find(file , ".")) -- nefunguje neznamo proc z "." jinak vse funguje jak ma

for aa = 1,#files do
file = files[aa]
print(file)

for bb=1,#file do

znak=string.sub(file,bb,bb)
--print(bb.." "..znak)

if znak == znak_rozdelovac then
--print("zde")

file_name = string.sub(file,1,bb-1)
print(file_name.."<")

file_pripona = string.sub(file,bb+1,#file)
print(file_pripona.."<<")

end -- if znak

end --bb

end -- aa








