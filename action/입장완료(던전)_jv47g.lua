local notelpo = 0

if(dungeon_name[dungeon_index] == '지하' and dungeon_floor[dungeon_index] == 7) then -- 지감7층
 notelpo = 1
elseif(dungeon_name[dungeon_index] == '지하' and dungeon_floor[dungeon_index] == 8) then -- 지감8층
 notelpo = 1
elseif(dungeon_name[dungeon_index] == '지하' and dungeon_floor[dungeon_index] == 9) then -- 지감월드
 notelpo = 1
end

-- 다른 던전에서는 무조건 텔포
dungeon_telpo_backup = dungeon_telpo
if(notelpo == 0) then
 dungeon_telpo = 1
end

if(dungeon_telpo == 0) then
 EnableImage(true, '카메라변경(던전)')
else
 EnableImage(true, '지상이동(던전)')
end

Sleep(500)
-- 이동전 AUTO 먼저 누름
Mouse(LBUTTON, CLICK, 905, 394)
Sleep(300)
