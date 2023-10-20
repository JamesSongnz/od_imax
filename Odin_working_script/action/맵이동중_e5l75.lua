local maxi = 4
for i=1,maxi do
	if(IsStop() == 1) then return end
	ret = MultiImage('이동중1|이동중2|이동중3|이동중4')
	if(ret == 1) then
	 print('이동중..')
	 PassAllAct()
	 return
	end
	if(i < maxi) then Sleep(500) end
end

print('이동완료')
eventtick = GetTickCount()

local telpocnt = 0
for i=1,1000 do
 if(IsStop() == 1) then break end
 if(telpocnt >= map_telpo) then break end
 retHPseed = ImageSearch('HPseed')
 if(retHPseed == 1) then
  ret = ImageClick('텔포')
  if(ret == 0) then print('보이는 슬롯에 순간이동주문서가 없습니다.') end
  telpocnt = telpocnt+1
 end
 Sleep(500)
end

--[[
for i=1,map_telpo do
 print('i: '..i)
 ret = ImageSearch('HPseed')
 if(ret == 1) then
  Sleep(500)
  ImageClick('텔포')
 else
  i = i-1 -- i가 for문 i와 다름
 end
 print('i: '..i)
 Sleep(500)
end
]]--
