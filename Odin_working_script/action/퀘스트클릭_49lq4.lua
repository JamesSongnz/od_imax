-- ������ or ������ or �Ƿ��� Ŭ��

if(quest_article == 1) then
	ret = ImageSearch('���θ�ũ')
	if(ret == 0) then
--	 print('����Ʈ�� �������� �����ϴ�.')
	 PassAllAct()
	 return
	end
else
	ret = MultiImage('���긶ũ|�Ƿڸ�ũ')
	if(ret == 0) then
--	 print('����Ʈ�� �������� �����ϴ�.')
	 PassAllAct()
	 return
	end
--	rider = 0
end

if(rider == 1) then
 if(quest_fastmove == 1) then
  Mouse(LBUTTON, CLICK, 901, 86 + (quest_article-1)*51)
 elseif(quest_fastmove == 0) then
  PassAct(0)
 end
else
 Mouse(LBUTTON, CLICK, 810, 100 + (quest_article-1)*51)
end
