if(return_hp == 0) then
 return
end

return_hp_backup = return_hp
if(playmode == 1) then
 print('보스맵인 경우 hp부족시 귀환하지 않습니다.')
 return_hp = 0
end
