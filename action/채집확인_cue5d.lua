if(needHP(10) == 1) then return end

-- ä�������� Ȯ��                            
local failcnt = 0
--for i=1,10 do -- 2�ʰ� �˻�
for i=1,5 do -- 1�ʰ� �˻�
	if(IsStop() == 1) then return end
	ret = MultiImage('ä����1|ä����2')
	if(ret == 1) then
	 EnableImage(false, 'ä���̵���')
	 print('ä����..')
	 failcnt = 0
	 gathering = 1
	else
	 failcnt = failcnt+1
	end
	if(failcnt >= 3) then break end
	Sleep(200)
end

eventtick = GetTickCount()

if(gathering == 0) then
-- SaveScreenshot()
end

print('ä���Ϸ�')
EnableImage(false, 'ä��Ȯ��')

if(needHP(10) == 1) then return end
if(gathering == 1) then
 EnableImage(true, '�ʿ���(ä��)')
end
