enemy_ret2 = ImageSearch('던전안남음')

if(enemy_ret == 1) then
 if(enemy_avoid == 1 and enemy_ret2 == 1) then
  print('적대 감지 순간이동 사용')
  Mouse(LBUTTON, CLICK, 345, 489)
  Sleep(500)
  Mouse(LBUTTON, CLICK, 345, 489)
  Sleep(8000)
  Keybd('d', FASTER, MESSAGE)
   if(dungeon_floor[dungeon_index] == 7 and dungeon_area == 1) then
    Mouse(LBUTTON, CLICK, 120, 175)
    Sleep(1000)
    EnableImage(false, '전투')
    EnableImage(false, "매뉴(던전)")
    EnableImage(true, '던전이동')
    EnableImage(true, '위치12방')
    GotoImage('위치12방')
   end
 elseif(enemy_avoid == 1 and enemy_ret2 == 0) then
  print('적대 감지 귀환 사용')
  Mouse(LBUTTON, CLICK, 345, 489)
  Sleep(500)
  Mouse(LBUTTON, CLICK, 345, 489)
  Sleep(8000)
  Keybd('d', FASTER, MESSAGE)
  Sleep(500)
  EnableImage(true, '귀환')
 elseif(enemy_avoid == 2) then
  print('적대 감지 귀환 사용')
  EnableImage(true, '귀환')
 end
end

enemy_ret2 = nil