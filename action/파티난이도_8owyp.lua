if(dungeon_level == 1) then
 print('���� ���̵� ����')
end

if(dungeon_level == 2) then
 print('���̵� ����� ����')
end

if(dungeon_level == 3) then
 print('���̵� �ſ� ����� ����')
end

if(dungeon_level == 4) then
 print('���̵� �ؾ� ����')
end

ix = 60 + (dungeon_level - 1)*85
Mouse(LBUTTON, CLICK, ix, 255)
if(dungeon_level ~= 1) then
 Mouse(LBUTTON, CLICK, ix, 255)
end

--if(non_party == 1) then
-- print('����� ��Ƽ ������')
-- ImageClick('�����')
--end

if(non_party == 1) then
 ret, acc = ImageSearch('�����')
 if(ret == 0) then
 	print('����� ��Ƽ ������')
 	Mouse(LBUTTON, CLICK, 33, 296) -- �̹��� ��ġ Ŭ��
 end
end