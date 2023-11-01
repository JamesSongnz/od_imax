-- HP부족시 counthp              
if(return_counthp >= 2) then -- 이미 카운팅된 경우
 return
end

retHPseed = ImageSearch('HPseed')
if(retHPseed == 0) then
 return_counthp = 0
 danger_counthp = 0
 PassAllAct()
 return
end

if(hp.gauge < return_hp) then
-- print('HP: '..hp.gauge..'%')
-- print('return_counthp: '..return_counthp)
 return_counthp = return_counthp+1
else
 return_counthp = 0
end

if(playmode == 4) then -- 던전
--if(return_hp_backup > 0 or playmode == 4) then -- 보스맵 or 던전
 if(hp.gauge < dungeon_dangerhp) then
  danger_counthp = danger_counthp+1
 else
  danger_counthp = 0
 end
end
