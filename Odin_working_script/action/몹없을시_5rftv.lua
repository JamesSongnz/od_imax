-- 5�� �������� ����ó��(5�� �ʰ�)

if(playmode == 1 or playmode == 3) then
 PassAllAct()
 return
end

t = GetTickCount()
if(t < eventtick + 300000) then -- �ƴϸ� �н�
 PassAllAct()
end
