--print('�����ð�����')

ret = ImageSearch('�����ð�')
if(ret == 1) then -- �ð�����
 PassAllAct()
 return
end

ret = dungeonTimeoutNext()
if(ret == 1) then
 PassAllAct()
else
 ImageClick('������(��)')
 Sleep(2000)
end
