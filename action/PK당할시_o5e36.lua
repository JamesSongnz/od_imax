pktick = GetTickCount()
if(pkattack_sec > 0) then
 EnableImage(true, 'PK�ݰ�')
end

pktick = GetTickCount()
if(pkattack_sec == 0) then
 EnableImage(true, 'PK����')
 EnableImage(true, 'PK��ȯ')
end

if(return_hp_backup == 0) then
 return_hp_backup = return_hp
 return_hp = pkreturn_hp
end
