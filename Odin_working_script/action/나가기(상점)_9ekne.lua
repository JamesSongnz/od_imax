-- 우편받기 후 이동
if(playmode == 1) then -- 퀘스트모드
 modeEnable()
 waitMap()
 return
end

if(auto_post == 1) then
 EnableImage(true, '우편')
elseif(auto_post == 0) then
 modeEnable()
end

eventtick = GetTickCount()
