local notelpo = 0

if(dungeon_name[dungeon_index] == '����' and dungeon_floor[dungeon_index] == 7) then -- ����7��
 notelpo = 1
elseif(dungeon_name[dungeon_index] == '����' and dungeon_floor[dungeon_index] == 8) then -- ����8��
 notelpo = 1
elseif(dungeon_name[dungeon_index] == '����' and dungeon_floor[dungeon_index] == 9) then -- ��������
 notelpo = 1
end

-- �ٸ� ���������� ������ ����
dungeon_telpo_backup = dungeon_telpo
if(notelpo == 0) then
 dungeon_telpo = 1
end

if(dungeon_telpo == 0) then
 EnableImage(true, 'ī�޶󺯰�(����)')
else
 EnableImage(true, '�����̵�(����)')
end

Sleep(500)
-- �̵��� AUTO ���� ����
Mouse(LBUTTON, CLICK, 905, 394)
Sleep(300)
