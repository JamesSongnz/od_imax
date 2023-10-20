-- 5분 몹없을시 예외처리(5분 초과)

if(playmode == 1 or playmode == 3) then
 PassAllAct()
 return
end

t = GetTickCount()
if(t < eventtick + 300000) then -- 아니면 패스
 PassAllAct()
end
