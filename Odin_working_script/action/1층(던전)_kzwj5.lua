-- ������ ������(�ܰ�) Ŭ��
print(dungeon_floor[dungeon_index]..'�� �̵�')
iy = 83 + (dungeon_floor[dungeon_index]-1)*55
Mouse(LBUTTON, CLICK, 140, iy)
if(dungeon_floor[dungeon_index] ~= 1) then -- 1���� �ƴϸ� �ѹ���Ŭ��
 Mouse(LBUTTON, CLICK, 140, iy)
end
