ret = 0
if(quest_article == 1) then
 ret = ImageSearch('���θ�ũ')
else
 ret = MultiImage('���긶ũ|�Ƿڸ�ũ')
end

if(ret == 1) then
 ret1 = ImageSearch('��������') 
 ret2 = ImageSearch('��������(2)') 
 if(ret1 == 1 or ret2 == 1) then
  eventtick = GetTickCount()
 end
end
