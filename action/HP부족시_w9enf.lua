-- HP������ counthp              
if(return_counthp >= 2) then -- �̹� ī���õ� ���
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

if(playmode == 4) then -- ����
--if(return_hp_backup > 0 or playmode == 4) then -- ������ or ����
 if(hp.gauge < dungeon_dangerhp) then
  danger_counthp = danger_counthp+1
 else
  danger_counthp = 0
 end
end
