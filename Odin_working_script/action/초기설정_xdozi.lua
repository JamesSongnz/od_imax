-------- �ý��� ���� --------         
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

-- Ÿ�׷� ��Ȱ��
function modeDisable()
	EnableImage(true, 'HP������')
end




EnableImage(true, '50����')
EnableImage(true, '50�Ŵ�')


-- quest mode : disable one action menu
if(playmode == 1) then
 
 EnableImage(false, '==ĳ���ޱ����')
 EnableImage(false, '==�����̵��ϱ�')
 EnableImage(false, '==��ĳ-�������ڱ��')
 
end


if(playmode == 5) then
 EnableImage(true, '20����')
 EnableImage(true, '20�Ŵ�')
 EnableImage(false, '�����ν�')
 EnableImage(false, '50����')
 EnableImage(false, '50�Ŵ�')
 EnableImage(false, '����')
 EnableImage(false, '����')
 EnableImage(false, '��Ÿ')
end

if(playmode == 6) then
 EnableImage(false, '20����')
 EnableImage(false, '20�Ŵ�')
 EnableImage(false, '�����ν�')
 EnableImage(false, '50����')
 EnableImage(false, '50�Ŵ�')
 EnableImage(false, '����')
 EnableImage(false, '����')
 EnableImage(false, '��Ÿ')
 EnableImage(true, 'ĳ���ޱ����')
end

-- �ʱ��� 
if(playmode == 7) then
 EnableImage(false, '20����')
 EnableImage(false, '20�Ŵ�')
 EnableImage(false, '�����ν�')
 EnableImage(false, '50����')
 EnableImage(false, '50�Ŵ�')
 EnableImage(false, '����')
 EnableImage(false, '����')
 EnableImage(false, '��Ÿ')
 EnableImage(false, 'ĳ���ޱ����')
 EnableImage(false, '�ʱ���')
 EnableImage(true, 'ĳ������')
 
end

if(playmode == 1 and quest_article > 1) then

	local questing = GetImageROI('��������')
	questing[2] = questing[2] + (quest_article-1)*50 - 15
	questing[4] = questing[4] + 30
	SetImageROI('��������', questing)

	local submark = GetImageROI('���긶ũ')
	submark[2] = submark[2] + (quest_article-1)*50
	SetImageROI('���긶ũ', submark)

	local reqmark = GetImageROI('�Ƿڸ�ũ')
	reqmark[2] = reqmark[2] + (quest_article-1)*50
	SetImageROI('�Ƿڸ�ũ', reqmark)

	local reward = GetImageROI('�������')
	reward[2] = reward[2] + (quest_article-1)*50
	print('reward[2]: '..reward[2])
	SetImageROI('�������', reward)

end

if(playmode == 4 and quest_article > 1) then

	local questing = GetImageROI('��������')
	questing[2] = questing[2] + (quest_article-1)*50 - 15
	questing[4] = questing[4] + 30
	SetImageROI('��������', questing)

	local submark = GetImageROI('���긶ũ')
	submark[2] = submark[2] + (quest_article-1)*50
	SetImageROI('���긶ũ', submark)

	local reqmark = GetImageROI('�Ƿڸ�ũ')
	reqmark[2] = reqmark[2] + (quest_article-1)*50
	SetImageROI('�Ƿڸ�ũ', reqmark)

	local reward = GetImageROI('�������')
	reward[2] = reward[2] + (quest_article-1)*50
	print('reward[2]: '..reward[2])
	SetImageROI('�������', reward)

end

if(return_potion == nil or return_potion == 0) then
	EnableImage(false, '�������1')
	EnableImage(false, '�������2')
	EnableImage(false, '�������3')
end

EnableImage(false, '�ʱ⼳��')


if(playmode == 0) then
 if(ImageSearch('���Ӿ�����') == 1 or ImageSearch('���Ӿ�����(2)') == 1) then
  print('��尡 ���õ��� �ʾ� ���� �� Stop�մϴ�.')
 else
  print('��带 �����ϼ���.')
  Stop()
  return
 end
end

if(initstep ~= 0) then
 print('���������� üũ�ϼ���.')
 Stop()
 return
end
initstep = 1

im_ver = GetImageMaxVer()
if(im_ver == nil or im_ver < 1.76) then
 print('���α׷� ����� �Ŀ� ���۰����մϴ�.')
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

-- n�� �� ����
function waitSec(sec)
	for i=sec,1,-1 do
	if(IsStop() == 1) then break end
	 print(i..'�� �� �����մϴ�.')
	 Sleep(1000)
	end
end

-- ����������
function waitMap()
	-- map_waitsec = 5
	-- for i=map_waitsec,1,-1 do
	--  print(i..'�� �� �̵��մϴ�.')
	for i=0,1000000 do
		Sleep(1000)
		if(IsStop() == 1) then break end
		ImageSearch('HP')
		print('HP: '..hp.gauge..'% ('..map_wait_hp..'%���� ��� �� �̵� ������)')
		if(hp.gauge >= map_wait_hp) then
			break
		end
	end -- for

	if(playmode == 1) then
		EnableImage(true, '����Ʈ')
	else
		EnableImage(true, '���̵�')
	end
	EnableImage(true, 'HP������')
end

-- ������� �ν�
function needPotion()
	-- HP���� �����ڸ� �ν�
	ret = 0
	local potion_num = math.floor(return_potion/10 + 0.5)
	if(potion_num > 10) then
	 potion_num = 10
	end

	for i=potion_num-1,1,-1 do
	 local image_name = '����'..i
	 ret, acc = ImageSearch(image_name)
--	 print('image_name, ret, acc: '..image_name, ret, acc)
	 if(ret == 0) then
	  image_name = '����'..i
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

-- HP���� �ν�
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

	EnableImage(true, 'PK���ҽ�')

	local local_dungeon_retry = 0
	if(dungeon_reentry == 1 and need_potion == 1) then
		print('������� ��ȯ�� ���� ������ ������')
		local_dungeon_retry = 1
	end
	if(dungeon_hpretry == 1) then
		print('HP���� ��ȯ�� ���� ������ ������')
		local_dungeon_retry = 1
	end
	need_potion = 0

	if(playmode == 2) then -- ���̵����
		mapindexPlus()
	elseif(playmode == 4 and local_dungeon_retry == 0) then -- �������
		dungeonindexPlus()
		if(dungeon_index == 1) then
			if(dungeon_return == '�ڵ�����Ʈ') then
			 playmode = 1
			elseif(dungeon_return == '���̵����') then
			 playmode = 2
			elseif(dungeon_return == '�̵�ä��') then
			 playmode = 3
			elseif(dungeon_return == '�������') then
			 playmode = 4
			elseif(dungeon_return == '���') then
			 playmode = 5
			end
		end
	end

end

function dungeonTimeoutNext()
	-- ���� �����ð� ���� ��� ������
	EnableImage(false, dungeon_name[dungeon_index])
	if(dungeonindexPlus() == true) then -- ��������
		modeEnable()
		ret = 1
	else -- ������������
		if(dungeon_return == '�ڵ�����Ʈ') then
		 playmode = 1
		elseif(dungeon_return == '���̵����') then
		 playmode = 2
		elseif(dungeon_return == '�̵�ä��') then
		 playmode = 3
		elseif(dungeon_return == '�������') then
		 playmode = 4
		elseif(dungeon_return == '���') then
		 playmode = 5
		end
		modeEnable()
		if(playmode == 1) then
		 EnableImage(true, '�����ν�')
		elseif(playmode == 2) then
		 EnableImage(true, '�����ν�')
		elseif(playmode == 3) then
		 EnableImage(true, '�����ν�')
		elseif(playmode == 4) then
		 EnableImage(true, '�����ν�')
		elseif(playmode == 5) then
		 EnableImage(false, '�����ν�')
		end
		ret = 0
	end
	return ret
end

-- ���Ǻ� ��ų ���
if(conditional_skill == 1) then
 EnableImage(true, '���Ǻ�')
 EnableImage(true, '���Ǻ�2')
 EnableImage(true, '���Ǻ�3')
 EnableImage(true, '���Ǻ�4')
 print('���Ǻ� ��ų ������')
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
	-- ä��â ���� ������ ��
--	local radius = 60
--	roi = {640-radius, 660-radius, radius*2, radius*2}
	-- �����ϴ� ����ġ ��
	roi = {0, 500, 144, 40}
	if(centerframe.bits ~= nil) then
	 acc, fx, fy = BitsSearch(centerframe, roi)
--	 print('acc: '..acc)
--	 ReleaseBits(centerframe.bits)
--	 centerframe.bits = nil
	end

	-- ���� ����
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

 print('���÷��̾� �����')

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

	-- LD��Ƽ�÷��̾� ����(Ctrl+2)
	Keybd('<Ctrl_Press><Delay_500>2<Delay_500><Ctrl_Release>', FASTER, MKEVENT)
	Sleep(2000)

	ret = FindWindow('LDMultiPlayerMainFrame', 'LDMultiPlayer')
	print('FindWindow ret: '..ret)
	if(ret == 0) then
	 print('')
	 print('LD��Ƽ�÷��̾� ���� ����Ű(Ctrl+2) Ȯ��!')
	 print('')
	end

	OpenScript('�����\\LDPlayer�����')

 elseif(appplayer == 'nox') then

	ret = FindWindow('Qt5QWindow', '��Ƽ ���÷��̾�')
	print('FindWindow ret: '..ret)
	if(ret == 0) then
	 print('not found ��Ƽ ���÷��̾�')
	else
	 local WM_CLOSE = 0x0010
	 SendMessage(ret, WM_CLOSE, 0, 0)
	 Sleep(1000)
	end

	-- Nox��Ƽ�÷��̾� ����(Ctrl+6)
	Keybd('<Ctrl_Press><Delay_500>6<Delay_500><Ctrl_Release>', FASTER, MKEVENT)
	Sleep(2000)

	ret = FindWindow('Qt5QWindow', '��Ƽ ���÷��̾�')
	print('FindWindow ret: '..ret)
	if(ret == 0) then
	 print('')
	 print('Nox��Ƽ���÷��̾� ���� ����Ű(Ctrl+6) Ȯ��!')
	 print('')
	end

	OpenScript('�����\\NoxPlayer�����')

 else
	print('���÷��̾��: ld�� nox�߿� �Է��ϼ���.')
	Stop()
	return
 end

end

-------------------------------------
--restartAppplayer() -- ����� �׽�Ʈ

inv_roi = {605, 102, 344, 344}

function invOpen()
 for i=1,5 do
  if(IsStop() == 1) then break end
  ret = ImageSearch('������')
  if(ret == 1) then return 1 end
  Mouse(LBUTTON, CLICK, 867, 25)
  Sleep(500)
 end
 return 0
end

function invClose()
 for i=1,5 do
  if(IsStop() == 1) then break end
  ret, acc, ix, iy = ImageSearch('������')
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
  ret, acc, ix, iy = ImageSearch('����(����)', inv_roi)
  print('ret: '..ret)
  if(ret == 1) then break end
 end
 if(ret == 1) then -- ���
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
    print('�ν� ��� â ����')
    EnableImage(true, '�޼�������')
    re_start = 1
end