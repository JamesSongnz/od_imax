if(return_counthp >= 2) then
 print('HP: '..hp.gauge..'%')
 print('HPºÎÁ·½Ã ±ÍÈ¯')
 return
else
 PassAllAct()
end

if(danger_counthp >= 2) then
 t = GetTickCount()
-- if(t < rotmovetick + 60000) then
--  return
-- end
 if(needHP(0) == 1) then return end
 rotmovetick = t
 EnableImage(true, '¸÷µûµ¹¸®±â')
 danger_counthp = 0
end
