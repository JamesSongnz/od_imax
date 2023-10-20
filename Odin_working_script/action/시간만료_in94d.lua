--print('던전시간만료')

ret = ImageSearch('충전시간')
if(ret == 1) then -- 시간남음
 PassAllAct()
 return
end

ret = dungeonTimeoutNext()
if(ret == 1) then
 PassAllAct()
else
 ImageClick('나가기(맵)')
 Sleep(2000)
end
