if(needHP(10) == 1) then return end

-- 채집중인지 확인                            
local failcnt = 0
--for i=1,10 do -- 2초간 검사
for i=1,5 do -- 1초간 검사
	if(IsStop() == 1) then return end
	ret = MultiImage('채집중1|채집중2')
	if(ret == 1) then
	 EnableImage(false, '채집이동중')
	 print('채집중..')
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

print('채집완료')
EnableImage(false, '채집확인')

if(needHP(10) == 1) then return end
if(gathering == 1) then
 EnableImage(true, '맵열기(채집)')
end
