-- 설정된 던전층(단계) 클릭
print(dungeon_floor[dungeon_index]..'층 이동')
iy = 83 + (dungeon_floor[dungeon_index]-1)*55
Mouse(LBUTTON, CLICK, 140, iy)
if(dungeon_floor[dungeon_index] ~= 1) then -- 1층이 아니면 한번더클릭
 Mouse(LBUTTON, CLICK, 140, iy)
end
