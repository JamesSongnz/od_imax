-- 의뢰 시작하고 900초 경과시 다시 시도
--if(GetTickCount() < reqtick + 900000) then
-- PassAllAct()
--end

if(q_timer == 1) then
 if(GetTickCount() < reqtick + 900000) then
  PassAllAct()
 end
elseif(q_timer == 0) then
 PassAllAct()
end