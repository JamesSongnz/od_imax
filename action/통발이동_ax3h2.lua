local maxi = 4
for i=1,maxi do
	if(IsStop() == 1) then return end
	ret = MultiImage('이동중1|이동중2|이동중3|이동중4')
	if(ret == 1) then
	 print('통발 이동중..')
	 PassAllAct()
	 return
	end
	if(i < maxi) then Sleep(500) end
print('통발 이동완료')
end