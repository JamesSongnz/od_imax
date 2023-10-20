-- 마을아니면

if(playmode == 2) then
 EnableImage(false, '맵이동')
 if(#map_order > 1) then
  print('필드에서 시작시 현재 맵을 첫번째 순서로 인식합니다.')
 end
 mapindexPlus()
end

if(playmode == 3) then -- 이동채집은 HP따로 체크함
 EnableImage(false, '전투')
else
 EnableImage(true, '전투')
end

-- 던전인지 확인
ret = MultiImage('던전모드|던전절전모드|무법|그림자')
if(ret == 1) then
 EnableImage(false, '던전이동')
 if(#dungeon_name > 1) then
  print('던전에서 시작시 현재 던전을 첫번째 순서로 인식합니다.')
 end
-- dungeonindexPlus()
 print('next_dungeon: '..dungeon_index+1) -- 귀환시 실제 증가함
end

-- 절전모드 확인
ret = ImageSearch('절전모드')
if(ret == 1) then
	if(playmode == 1) then -- 퀘스트 절전해제
	 Mouse(LBUTTON, DRAG, 400, 245, 580, 245)
	elseif(playmode == 2) then -- 맵이동
	 EnableImage(false, '맵이동')
	elseif(playmode == 3) then -- 이동채집 절전해제
	 Mouse(LBUTTON, DRAG, 400, 245, 580, 245)
	elseif(playmode == 4) then -- 던전이동
	 EnableImage(false, '던전이동')
	end
end
