--imagesearch_refresh = 1
--local maxi = 15	-- 7.5�ʰ� �˻�
local maxi = 9	-- 5�ʰ� �˻�
for i=1,maxi do
	if(IsStop() == 1) then return end
	ret = MultiImage('�̵���1|�̵���2|�̵���3|�̵���4')
	if(ret == 1) then
	 print('�̵���..')
	 PassAllAct()
--	 imagesearch_refresh = 0
	 return
	end
	ret = MultiImage('Ǯ|����|����')
	if(ret == 1) then
--	 imagesearch_refresh = 0
	 return
	end
	if(i < maxi and needHP(10) == 0) then Sleep(500) end
end
--imagesearch_refresh = 0

print('�̵��Ϸ�')
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
