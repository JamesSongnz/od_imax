if(dungeon_name[dungeon_index] == '지하') then
   if(dungeon_floor[dungeon_index] == 7 and dungeon_area == 1) then
    Sleep(1000)
    Mouse(LBUTTON, CLICK, 120, 175)
    Sleep(1000)
    EnableImage(false, '전투')
    EnableImage(false, "매뉴(던전)")
    EnableImage(true, '던전이동')
    EnableImage(true, '위치12방')
    GotoImage('위치12방')
   end
end