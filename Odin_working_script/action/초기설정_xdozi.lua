-------- 시스템 변수 --------         
t = GetTickCount()
starttick = t
eventtick = t
reqtick = t
rotmovetick = 0
revivaltick = 0
pktick = 0
party_d = 0
autorestart = 0
re_start = 0

enemy_ret = 1
rider = 1
qpotion = 0
return_counthp = 0
danger_counthp = 0
return_hp_backup = 0
return_fieldcnt = 0
map_index = 1
gathering = -1
gathermap_index = 1
movebtn_failed = 0
dungeon_index = 1
need_potion = 0
need_telpo = 0
initmaxfreezing_cnt = 10
maxfreezing_cnt = initmaxfreezing_cnt
freezing_cnt = 0
cantfastmove = 0
return_potion = 50

-- 타그룹 비활성
function modeDisable()
	EnableImage(true, 'HP부족시')
end




EnableImage(true, '50미터')
EnableImage(true, '50매뉴')


-- quest mode : disable one action menu
if(playmode == 1) then
 
 EnableImage(false, '==캐쉬받기시작')
 EnableImage(false, '==서버이동하기')
 EnableImage(false, '==신캐-버프상자까기')
 
end


if(playmode == 5) then
 EnableImage(true, '20미터')
 EnableImage(true, '20매뉴')
 EnableImage(false, '마을인식')
 EnableImage(false, '50미터')
 EnableImage(false, '50매뉴')
 EnableImage(false, '접속')
 EnableImage(false, '전투')
 EnableImage(false, '기타')
end

if(playmode == 6) then
 EnableImage(false, '20미터')
 EnableImage(false, '20매뉴')
 EnableImage(false, '마을인식')
 EnableImage(false, '50미터')
 EnableImage(false, '50매뉴')
 EnableImage(false, '접속')
 EnableImage(false, '전투')
 EnableImage(false, '기타')
 EnableImage(true, '캐쉬받기시작')
end

-- 초기퀘 
if(playmode == 7) then
 EnableImage(false, '20미터')
 EnableImage(false, '20매뉴')
 EnableImage(false, '마을인식')
 EnableImage(false, '50미터')
 EnableImage(false, '50매뉴')
 EnableImage(false, '접속')
 EnableImage(false, '전투')
 EnableImage(false, '기타')
 EnableImage(false, '캐쉬받기시작')
 EnableImage(false, '초기퀘')
 EnableImage(true, '캐릭생성')
 
end

if(playmode == 1 and quest_article > 1) then

	local questing = GetImageROI('퀘진행중')
	questing[2] = questing[2] + (quest_article-1)*50 - 15
	questing[4] = questing[4] + 30
	SetImageROI('퀘진행중', questing)

	local submark = GetImageROI('서브마크')
	submark[2] = submark[2] + (quest_article-1)*50
	SetImageROI('서브마크', submark)

	local reqmark = GetImageROI('의뢰마크')
	reqmark[2] = reqmark[2] + (quest_article-1)*50
	SetImageROI('의뢰마크', reqmark)

	local reward = GetImageROI('보상수령')
	reward[2] = reward[2] + (quest_article-1)*50
	print('reward[2]: '..reward[2])
	SetImageROI('보상수령', reward)

end

if(playmode == 4 and quest_article > 1) then

	local questing = GetImageROI('퀘진행중')
	questing[2] = questing[2] + (quest_article-1)*50 - 15
	questing[4] = questing[4] + 30
	SetImageROI('퀘진행중', questing)

	local submark = GetImageROI('서브마크')
	submark[2] = submark[2] + (quest_article-1)*50
	SetImageROI('서브마크', submark)

	local reqmark = GetImageROI('의뢰마크')
	reqmark[2] = reqmark[2] + (quest_article-1)*50
	SetImageROI('의뢰마크', reqmark)

	local reward = GetImageROI('보상수령')
	reward[2] = reward[2] + (quest_article-1)*50
	print('reward[2]: '..reward[2])
	SetImageROI('보상수령', reward)

end

if(return_potion == nil or return_potion == 0) then
	EnableImage(false, '물약부족1')
	EnableImage(false, '물약부족2')
	EnableImage(false, '물약부족3')
end

EnableImage(false, '초기설정')


if(playmode == 0) then
 if(ImageSearch('게임아이콘') == 1 or ImageSearch('게임아이콘(2)') == 1) then
  print('모드가 선택되지 않아 접속 후 Stop합니다.')
 else
  print('모드를 선택하세요.')
  Stop()
  return
 end
end

if(initstep ~= 0) then
 print('변수설정에 체크하세요.')
 Stop()
 return
end
initstep = 1

im_ver = GetImageMaxVer()
if(im_ver == nil or im_ver < 1.76) then
 print('프로그램 재실행 후에 시작가능합니다.')
 Stop()
 return
end

-------------------------------------
function TableCopy(t1)
--	return {table.unpack(t1)}
	local t2 = {}
	for k,v in pairs(t1) do
	 if type(v) == "table" then
	  t2[k] = TableCopy(v)
	 else
	  t2[k] = v
	 end
	end
	return t2
end

if(centerframe == nil) then
 centerframe = {}
end
if(centerframe.bits ~= nil) then
 ReleaseBits(centerframe.bits)
 centerframe.bits = nil
end

-- n초 후 진행
function waitSec(sec)
	for i=sec,1,-1 do
	if(IsStop() == 1) then break end
	 print(i..'초 후 진행합니다.')
	 Sleep(1000)
	end
end

-- 상점나가기
function waitMap()
	-- map_waitsec = 5
	-- for i=map_waitsec,1,-1 do
	--  print(i..'초 후 이동합니다.')
	for i=0,1000000 do
		Sleep(1000)
		if(IsStop() == 1) then break end
		ImageSearch('HP')
		print('HP: '..hp.gauge..'% ('..map_wait_hp..'%까지 대기 후 이동 설정됨)')
		if(hp.gauge >= map_wait_hp) then
			break
		end
	end -- for

	if(playmode == 1) then
		EnableImage(true, '퀘스트')
	else
		EnableImage(true, '맵이동')
	end
	EnableImage(true, 'HP부족시')
end

-- 물약부족 인식
function needPotion()
	-- HP물약 십의자리 인식
	ret = 0
	local potion_num = math.floor(return_potion/10 + 0.5)
	if(potion_num > 10) then
	 potion_num = 10
	end

	for i=potion_num-1,1,-1 do
	 local image_name = '소형'..i
	 ret, acc = ImageSearch(image_name)
--	 print('image_name, ret, acc: '..image_name, ret, acc)
	 if(ret == 0) then
	  image_name = '중형'..i
	  ret, acc = ImageSearch(image_name)
--	  print('image_name, ret, acc: '..image_name, ret, acc)
	 end
	 if(ret == 1) then
	  print('image_name, acc: '..image_name, acc)
	  need_potion = 1
	  break
	 end
	end

	return ret
end

-- HP부족 인식
function needHP(alpha)
	retHPseed = ImageSearch('HPseed')
	if(retHPseed == 1) then
	 ImageSearch('HP')
	 if(hp.gauge < return_hp+alpha) then
	  return 1
	 end
	end
	return 0
end

function mapindexPlus()
	map_index = map_index+1
	if(map_index > #map_order) then
	 map_index = 1
	end
	print('next_map: '..map_index)
end

function dungeonindexPlus()
	dungeon_index = dungeon_index+1
	if(dungeon_index > #dungeon_name) then
	 dungeon_index = 1
	 return false
	end
	print('next_dungeon: '..dungeon_index)
	return true
end

function afterReturn()

	return_fieldcnt = 0
	return_counthp = 0
	danger_counthp = 0

	if(return_hp_backup > 0) then
	 return_hp = return_hp_backup
	 return_hp_backup = 0
	end

	EnableImage(true, 'PK당할시')

	local local_dungeon_retry = 0
	if(dungeon_reentry == 1 and need_potion == 1) then
		print('물약부족 귀환시 던전 재입장 설정됨')
		local_dungeon_retry = 1
	end
	if(dungeon_hpretry == 1) then
		print('HP부족 귀환시 던전 재입장 설정됨')
		local_dungeon_retry = 1
	end
	need_potion = 0

	if(playmode == 2) then -- 맵이동사냥
		mapindexPlus()
	elseif(playmode == 4 and local_dungeon_retry == 0) then -- 던전사냥
		dungeonindexPlus()
		if(dungeon_index == 1) then
			if(dungeon_return == '자동퀘스트') then
			 playmode = 1
			elseif(dungeon_return == '맵이동사냥') then
			 playmode = 2
			elseif(dungeon_return == '이동채집') then
			 playmode = 3
			elseif(dungeon_return == '던전사냥') then
			 playmode = 4
			elseif(dungeon_return == '통발') then
			 playmode = 5
			end
		end
	end

end

function dungeonTimeoutNext()
	-- 던전 남은시간 없는 경우 다음맵
	EnableImage(false, dungeon_name[dungeon_index])
	if(dungeonindexPlus() == true) then -- 다음던전
		modeEnable()
		ret = 1
	else -- 다음던전없음
		if(dungeon_return == '자동퀘스트') then
		 playmode = 1
		elseif(dungeon_return == '맵이동사냥') then
		 playmode = 2
		elseif(dungeon_return == '이동채집') then
		 playmode = 3
		elseif(dungeon_return == '던전사냥') then
		 playmode = 4
		elseif(dungeon_return == '통발') then
		 playmode = 5
		end
		modeEnable()
		if(playmode == 1) then
		 EnableImage(true, '마을인식')
		elseif(playmode == 2) then
		 EnableImage(true, '마을인식')
		elseif(playmode == 3) then
		 EnableImage(true, '마을인식')
		elseif(playmode == 4) then
		 EnableImage(true, '마을인식')
		elseif(playmode == 5) then
		 EnableImage(false, '마을인식')
		end
		ret = 0
	end
	return ret
end

-- 조건부 스킬 사용
if(conditional_skill == 1) then
 EnableImage(true, '조건부')
 EnableImage(true, '조건부2')
 EnableImage(true, '조건부3')
 EnableImage(true, '조건부4')
 print('조건부 스킬 설정됨')
end

function rotatePad(cx, cy, radius, angle_from, angle_to, move_delay)

	Mouse(LBUTTON, DOWN, cx, cy-radius, 0, 0, 0, 0, move_delay, 1, FASTEST)

	local dx = 0
	local dy = 0
	local theta = 0
	for degree=angle_from, angle_to do
		if(IsStop() == 1) then break end
		theta = (degree*math.pi)/180;
		dx = cx + math.floor( math.sin(theta) * radius +0.5);
		dy = cy + math.floor(-math.cos(theta) * radius +0.5);
--		print('dx, dy: ', dx, dy)
		Mouse(LBUTTON, DOWN, dx, dy, 0, 0, 0, 0, move_delay, 1, FASTEST)
		ImageSearch('HP')
		if(hp.gauge < return_hp) then
		  return_counthp = return_counthp+1
		  if(return_counthp >= 2) then
		   break
		  end
		end
	end

	Mouse(LBUTTON, UP, dx, dy, 0, 0, 0, 0, move_delay, 1, FASTEST)
end


function checkframe()
	acc = 0
	-- 채팅창 영역 프레임 비교
--	local radius = 60
--	roi = {640-radius, 660-radius, radius*2, radius*2}
	-- 좌측하단 경험치 비교
	roi = {0, 500, 144, 40}
	if(centerframe.bits ~= nil) then
	 acc, fx, fy = BitsSearch(centerframe, roi)
--	 print('acc: '..acc)
--	 ReleaseBits(centerframe.bits)
--	 centerframe.bits = nil
	end

	-- 영역 저장
	if(centerframe.bits == nil) then
	 centerframe.w = roi[3]
	 centerframe.h = roi[4]
	 centerframe.bits = NewBits(roi[3], roi[4])
	end
	 CaptureScreen(centerframe.bits, roi[1], roi[2], roi[3], roi[4])
	-- SaveImageFile(centerframe.bits, roi[3], roi[4])
	return acc
end

function restartAppplayer()

 print('앱플레이어 재실행')

 if(appplayer == 'ld') then

	ret = FindWindow('LDMultiPlayerMainFrame', 'LDMultiPlayer')
	--ret = EnumWindow('LDMultiPlayer')
	print('FindWindow ret: '..ret)
	if(ret == 0) then
	 print('not found LDMultiPlayer')
	else
	 local WM_CLOSE = 0x0010
	 SendMessage(ret, WM_CLOSE, 0, 0)
	 Sleep(1000)
	end

	-- LD멀티플레이어 실행(Ctrl+2)
	Keybd('<Ctrl_Press><Delay_500>2<Delay_500><Ctrl_Release>', FASTER, MKEVENT)
	Sleep(2000)

	ret = FindWindow('LDMultiPlayerMainFrame', 'LDMultiPlayer')
	print('FindWindow ret: '..ret)
	if(ret == 0) then
	 print('')
	 print('LD멀티플레이어 실행 단축키(Ctrl+2) 확인!')
	 print('')
	end

	OpenScript('재실행\\LDPlayer재실행')

 elseif(appplayer == 'nox') then

	ret = FindWindow('Qt5QWindow', '멀티 앱플레이어')
	print('FindWindow ret: '..ret)
	if(ret == 0) then
	 print('not found 멀티 앱플레이어')
	else
	 local WM_CLOSE = 0x0010
	 SendMessage(ret, WM_CLOSE, 0, 0)
	 Sleep(1000)
	end

	-- Nox멀티플레이어 실행(Ctrl+6)
	Keybd('<Ctrl_Press><Delay_500>6<Delay_500><Ctrl_Release>', FASTER, MKEVENT)
	Sleep(2000)

	ret = FindWindow('Qt5QWindow', '멀티 앱플레이어')
	print('FindWindow ret: '..ret)
	if(ret == 0) then
	 print('')
	 print('Nox멀티앱플레이어 실행 단축키(Ctrl+6) 확인!')
	 print('')
	end

	OpenScript('재실행\\NoxPlayer재실행')

 else
	print('앱플레이어선택: ld와 nox중에 입력하세요.')
	Stop()
	return
 end

end

-------------------------------------
--restartAppplayer() -- 재실행 테스트

inv_roi = {605, 102, 344, 344}

function invOpen()
 for i=1,5 do
  if(IsStop() == 1) then break end
  ret = ImageSearch('나가기')
  if(ret == 1) then return 1 end
  Mouse(LBUTTON, CLICK, 867, 25)
  Sleep(500)
 end
 return 0
end

function invClose()
 for i=1,5 do
  if(IsStop() == 1) then break end
  ret, acc, ix, iy = ImageSearch('나가기')
  if(ret == 0) then return 1 end
  Mouse(LBUTTON, CLICK, ix, iy)
  Sleep(1000)
 end
 return 0
end

function invUseTelpo()
 if(invOpen() == 0) then return 0 end

 for i=1,15 do
  if(IsStop() == 1) then break end
  Mouse(LBUTTON, DOWN, 811, 444, 0, 0, 2, 5)
  Mouse(LBUTTON, DRAG, 811, 444, 811, 130, 2, 5)
  ret, acc, ix, iy = ImageSearch('텔포(가방)', inv_roi)
  print('ret: '..ret)
  if(ret == 1) then break end
 end
 if(ret == 1) then -- 사용
   Mouse(LBUTTON, CLICK, ix, iy, 0, 0, 5, 5, 0.5, 3)
   return 1
 end

 invClose()
 return 0
end

--invUseTelpo()
--Stop()

--[[
eventtick = GetTickCount()
if(GetTickCount() < eventtick + 4000) then
 PassAllAct()
end
]]--

function OnTargetWindowNotFound()
    print('인식 대상 창 없음')
    EnableImage(true, '메세지설정')
    re_start = 1
end