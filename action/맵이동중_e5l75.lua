local maxi = 4
for i=1,maxi do
	if(IsStop() == 1) then return end
	ret = MultiImage('�̵���1|�̵���2|�̵���3|�̵���4')
	if(ret == 1) then
	 print('�̵���..')
	 PassAllAct()
	 return
	end
	if(i < maxi) then Sleep(500) end
end

print('�̵��Ϸ�')
eventtick = GetTickCount()

local telpocnt = 0
for i=1,1000 do
 if(IsStop() == 1) then break end
 if(telpocnt >= map_telpo) then break end
 retHPseed = ImageSearch('HPseed')
 if(retHPseed == 1) then
  ret = ImageClick('����')
  if(ret == 0) then print('���̴� ���Կ� �����̵��ֹ����� �����ϴ�.') end
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
  ImageClick('����')
 else
  i = i-1 -- i�� for�� i�� �ٸ�
 end
 print('i: '..i)
 Sleep(500)
end
]]--
