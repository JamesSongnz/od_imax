enemy_ret2 = ImageSearch('�����ȳ���')

if(enemy_ret == 1) then
 if(enemy_avoid == 1 and enemy_ret2 == 1) then
  print('���� ���� �����̵� ���')
  Mouse(LBUTTON, CLICK, 345, 489)
  Sleep(500)
  Mouse(LBUTTON, CLICK, 345, 489)
  Sleep(8000)
  Keybd('d', FASTER, MESSAGE)
   if(dungeon_floor[dungeon_index] == 7 and dungeon_area == 1) then
    Mouse(LBUTTON, CLICK, 120, 175)
    Sleep(1000)
    EnableImage(false, '����')
    EnableImage(false, "�Ŵ�(����)")
    EnableImage(true, '�����̵�')
    EnableImage(true, '��ġ12��')
    GotoImage('��ġ12��')
   end
 elseif(enemy_avoid == 1 and enemy_ret2 == 0) then
  print('���� ���� ��ȯ ���')
  Mouse(LBUTTON, CLICK, 345, 489)
  Sleep(500)
  Mouse(LBUTTON, CLICK, 345, 489)
  Sleep(8000)
  Keybd('d', FASTER, MESSAGE)
  Sleep(500)
  EnableImage(true, '��ȯ')
 elseif(enemy_avoid == 2) then
  print('���� ���� ��ȯ ���')
  EnableImage(true, '��ȯ')
 end
end

enemy_ret2 = nil