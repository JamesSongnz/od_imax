-- �����ƴϸ�

if(playmode == 2) then
 EnableImage(false, '���̵�')
 if(#map_order > 1) then
  print('�ʵ忡�� ���۽� ���� ���� ù��° ������ �ν��մϴ�.')
 end
 mapindexPlus()
end

if(playmode == 3) then -- �̵�ä���� HP���� üũ��
 EnableImage(false, '����')
else
 EnableImage(true, '����')
end

-- �������� Ȯ��
ret = MultiImage('�������|�����������|����|�׸���')
if(ret == 1) then
 EnableImage(false, '�����̵�')
 if(#dungeon_name > 1) then
  print('�������� ���۽� ���� ������ ù��° ������ �ν��մϴ�.')
 end
-- dungeonindexPlus()
 print('next_dungeon: '..dungeon_index+1) -- ��ȯ�� ���� ������
end

-- ������� Ȯ��
ret = ImageSearch('�������')
if(ret == 1) then
	if(playmode == 1) then -- ����Ʈ ��������
	 Mouse(LBUTTON, DRAG, 400, 245, 580, 245)
	elseif(playmode == 2) then -- ���̵�
	 EnableImage(false, '���̵�')
	elseif(playmode == 3) then -- �̵�ä�� ��������
	 Mouse(LBUTTON, DRAG, 400, 245, 580, 245)
	elseif(playmode == 4) then -- �����̵�
	 EnableImage(false, '�����̵�')
	end
end
