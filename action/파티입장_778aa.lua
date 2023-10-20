-- 설정된 파티던전 입장
if(dungeon_floor[dungeon_index] == 1) then
 EnableImage(true, '맹독')
 print('파티던전 맹독의 뱀 둥지 입장')
end

if(dungeon_floor[dungeon_index] == 2) then
 EnableImage(true, '거인')
 print('파티던전 잊혀진 거인의 동굴 입장')
end

if(dungeon_floor[dungeon_index] == 3) then
 EnableImage(true, '왕가')
 print('파티던전 난쟁이 왕가의 무덤 입장')
end

if(dungeon_floor[dungeon_index] == 9) then
 EnableImage(true, '할로윈')
 print('파티던전 이벤트 할로윈의 악몽 입장')
end