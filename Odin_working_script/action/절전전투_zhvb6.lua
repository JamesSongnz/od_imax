if(playmode == 1) then
 EnableImage(true, '����Ʈ')
 EnableImage(false, '����')
 PassAllAct()
end

if(return_hp_backup > 0) then
 return_hp = return_hp_backup
 return_hp_backup = 0
end
