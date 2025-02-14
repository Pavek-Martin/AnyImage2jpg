#!/usr/bin/lua

pripony_obrazku = {"png", "tif", "jpeg", "pcx", "bmp", "gif", "tiff"}

files = {}
renames = {" "}
pocitadlo = 1

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
--print(file)

for bb=1,#file do

znak=string.sub(file,bb,bb)
--print(bb.." "..znak)

if znak == znak_rozdelovac then
--print("zde")

file_name = string.sub(file,1,bb-1)
--print(file_name.."<")

file_pripona = string.sub(file,bb+1,#file)
--print(file_pripona.."<<")

-- hleda priponi podle pole pripon

for cc = 1,#pripony_obrazku do
if file_pripona == pripony_obrazku[cc] then

nasel=0

for dd = 1,#renames do
if file_name == renames[dd] then
nasel = nasel + 1
--print("nasel")
--print(nasel.."-")
end -- if file_nasel
end -- for dd


-- nasel renames ?

if nasel > 0 then
print(pocitadlo..') '..'"'..file..'" --> "'..file_name.."("..nasel..').jpg"')

cmd_1='convert "'..file..'" "'..file_name.."("..nasel..').jpg"'


else
print(pocitadlo..') '..'"'..file..'" --> "'..file_name..'.jpg"')


cmd_1='convert "'..file..'" "'..file_name..'.jpg"'

end -- if nasel

--print(pocitadlo..")")
print(cmd_1)


table.insert(renames, file_name)
pocitadlo=pocitadlo + 1

end -- if file_pripona

end -- cc

end -- if znak

end --bb

end -- aa



