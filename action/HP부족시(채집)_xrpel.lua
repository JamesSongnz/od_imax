-- HP∫Œ¡∑Ω√ counthp              

retHPseed = ImageSearch('HPseed')
if(retHPseed == 0) then
 PassAllAct()
 return
end

if(hp.gauge < return_hp+10) then
-- print('HP: '..hp.gauge..'%')
-- print('return_counthp: '..return_counthp)
 return_counthp = return_counthp+1
else
 return_counthp = 0
end
