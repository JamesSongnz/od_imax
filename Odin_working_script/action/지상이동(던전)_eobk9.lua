-- ���� ���� �� ������ ���� �̵�

tret = ImageSearch('����')

if(tret == 1) then
 Sleep(1000)
 ImageClick('����')
 ImageClick('����')
 ImageClick('����')
 PassAct(1)
 Sleep(8000)
 Keybd('d', FASTER, MESSAGE)
elseif(tret == 0) then
  PassAct(0)
end

if(dungeon_area == 1) then
 EnableImage(true, '����7��')
 EnableImage(false, '�����̵�(����)')
 PassAllAct()
end