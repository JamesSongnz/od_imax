pktick = GetTickCount()
if(pkattack_sec > 0) then
 EnableImage(true, 'PK반격')
end

pktick = GetTickCount()
if(pkattack_sec == 0) then
 EnableImage(true, 'PK순간')
 EnableImage(true, 'PK귀환')
end

if(return_hp_backup == 0) then
 return_hp_backup = return_hp
 return_hp = pkreturn_hp
end
