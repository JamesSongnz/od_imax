-- 패드 360도 회전

ret = ImageSearch('절전모드')
if(ret == 1) then -- 절전해제
 Mouse(LBUTTON, DRAG, 400, 245, 580, 245)
 Sleep(1500)
end

local cx = 158
local cy = 400
local radius = 60
local move_delay = 0.02
if(playmode == 1) then -- 퀘스트모드
 move_delay = 0.013 -- 조금 작고빠르게
end

rotatePad(cx, cy, radius, 1, 360, move_delay)
if(playmode == 1) then
 eventtick = GetTickCount()
end
