-- �е� 360�� ȸ��

ret = ImageSearch('�������')
if(ret == 1) then -- ��������
 Mouse(LBUTTON, DRAG, 400, 245, 580, 245)
 Sleep(1500)
end

local cx = 158
local cy = 400
local radius = 60
local move_delay = 0.02
if(playmode == 1) then -- ����Ʈ���
 move_delay = 0.013 -- ���� �۰������
end

rotatePad(cx, cy, radius, 1, 360, move_delay)
if(playmode == 1) then
 eventtick = GetTickCount()
end
