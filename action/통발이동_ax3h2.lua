local maxi = 4
for i=1,maxi do
	if(IsStop() == 1) then return end
	ret = MultiImage('�̵���1|�̵���2|�̵���3|�̵���4')
	if(ret == 1) then
	 print('��� �̵���..')
	 PassAllAct()
	 return
	end
	if(i < maxi) then Sleep(500) end
print('��� �̵��Ϸ�')
end