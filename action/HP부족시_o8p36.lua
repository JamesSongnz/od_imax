if(return_counthp >= 2) then
 print('HP: '..hp.gauge..'%')
 print('HP������ ��ȯ')
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
 EnableImage(true, '����������')
 danger_counthp = 0
end
