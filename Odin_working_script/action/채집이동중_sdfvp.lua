--imagesearch_refresh = 1
--local maxi = 15	-- 7.5초간 검사
local maxi = 9	-- 5초간 검사
for i=1,maxi do
	if(IsStop() == 1) then return end
	ret = MultiImage('이동중1|이동중2|이동중3|이동중4')
	if(ret == 1) then
	 print('이동중..')
	 PassAllAct()
--	 imagesearch_refresh = 0
	 return
	end
	ret = MultiImage('풀|나무|광석')
	if(ret == 1) then
--	 imagesearch_refresh = 0
	 return
	end
	if(i < maxi and needHP(10) == 0) then Sleep(500) end
end
--imagesearch_refresh = 0

print('이동완료')
eventtick = GetTickCount()

--[[
if(gather_point == nil) then
 gather_point = 'A'
elseif(gather_point == 'A') then
 gather_point = 'B'
elseif(gather_point == 'B') then
 gather_point = 'A'
else
 print('Error: unknown gather_point')
end
]]--
