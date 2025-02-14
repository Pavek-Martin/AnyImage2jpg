#!/usr/bin/lua


files = {}
Hnd, ErrStr = io.popen("ls")
if Hnd then
for file in Hnd:lines() do
table.insert(files, file)
end
Hnd:close()
end


znak_rozdelovac = "."

for aa = 1,#files do
--print(k.." "..files[k])
print(files[aa])
--end

--os.exit()

--file = "abcd.bmp"

--file = "qwertyu.jpeg"

--print(file)


--print(string.find(file , ".")) -- nefunguje neznamo proc z "." jinak vse funguje jak ma


for bb=1,#files do
znak=string.sub(files[bb],bb,bb)
--print(bb.." "..znak)

if znak == znak_rozdelovac then
--print("zde")

file_name = string.sub(files[bb],1,aa-1)
print(file_name.."<")

file_pripona = string.sub(files[bb],aa+1,#files[bb])
print(file_pripona.."<<")

end -- if znak

end --bb

end -- aa







