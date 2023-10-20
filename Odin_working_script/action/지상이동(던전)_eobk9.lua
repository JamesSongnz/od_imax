-- 던전 입장 후 퀵슬롯 순간 이동

tret = ImageSearch('텔포')

if(tret == 1) then
 Sleep(1000)
 ImageClick('텔포')
 ImageClick('텔포')
 ImageClick('텔포')
 PassAct(1)
 Sleep(8000)
 Keybd('d', FASTER, MESSAGE)
elseif(tret == 0) then
  PassAct(0)
end

if(dungeon_area == 1) then
 EnableImage(true, '지하7층')
 EnableImage(false, '지상이동(던전)')
 PassAllAct()
end