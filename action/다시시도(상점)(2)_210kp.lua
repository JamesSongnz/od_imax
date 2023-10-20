-- 상인클릭한지 40초 경과시 다시 시도
if(GetTickCount() < eventtick + 40000) then
 PassAllAct()
end
