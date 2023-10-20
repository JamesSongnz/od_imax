if(dungeon_level == 1) then
 print('보통 난이도 입장')
end

if(dungeon_level == 2) then
 print('난이도 어려움 입장')
end

if(dungeon_level == 3) then
 print('난이도 매우 어려움 입장')
end

if(dungeon_level == 4) then
 print('난이도 극악 입장')
end

ix = 60 + (dungeon_level - 1)*85
Mouse(LBUTTON, CLICK, ix, 255)
if(dungeon_level ~= 1) then
 Mouse(LBUTTON, CLICK, ix, 255)
end

--if(non_party == 1) then
-- print('비공개 파티 설정됨')
-- ImageClick('비공개')
--end

if(non_party == 1) then
 ret, acc = ImageSearch('비공개')
 if(ret == 0) then
 	print('비공개 파티 설정됨')
 	Mouse(LBUTTON, CLICK, 33, 296) -- 이미지 위치 클릭
 end
end