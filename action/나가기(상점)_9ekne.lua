-- ����ޱ� �� �̵�
if(playmode == 1) then -- ����Ʈ���
 modeEnable()
 waitMap()
 return
end

if(auto_post == 1) then
 EnableImage(true, '����')
elseif(auto_post == 0) then
 modeEnable()
end

eventtick = GetTickCount()
