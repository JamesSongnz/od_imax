if(dungeon_name[dungeon_index] == '����') then
   if(dungeon_floor[dungeon_index] == 7 and dungeon_area == 1) then
    Sleep(1000)
    Mouse(LBUTTON, CLICK, 120, 175)
    Sleep(1000)
    EnableImage(false, '����')
    EnableImage(false, "�Ŵ�(����)")
    EnableImage(true, '�����̵�')
    EnableImage(true, '��ġ12��')
    GotoImage('��ġ12��')
   end
end