-- ���� ���� �� ���� �̵�

local cx = 158
local cy = 400
local radius = 60
local move_delay = 0.02

--if(dungeon_name[dungeon_index] == '������') then -- �����̺�����

	-- �� �̵�
--	Mouse(LBUTTON, DOWN, cx, cy+radius, 0, 0, 0, 0, move_delay, 1, FASTEST)
--	Sleep(15000)
--	Mouse(LBUTTON, UP, cx, cy)

--	PassAct(2)

--elseif(dungeon_name[dungeon_index] == '����' and dungeon_floor[dungeon_index] == 1) then -- ����1��

	-- ����
--	Mouse(LBUTTON, DOWN, cx, cy-radius, 0, 0, 0, 0, move_delay, 1, FASTEST)
--	Sleep(6000)
--	Mouse(LBUTTON, UP, cx, cy)
	-- ������ �ɸ� ����(��Ŭ��)
--	Mouse(LBUTTON, CLICK, 480-100, 90)
--	Mouse(LBUTTON, CLICK, 480, 90)
--	Mouse(LBUTTON, CLICK, 480+100, 90)
--	Sleep(1500)
	-- ����
--	Mouse(LBUTTON, DOWN, cx, cy-radius, 0, 0, 0, 0, move_delay, 1, FASTEST)
--	Sleep(9000)
--	Mouse(LBUTTON, UP, cx, cy)
	-- ������ �ɸ� ����(��Ŭ��)
--	Mouse(LBUTTON, CLICK, 480, 90)
--	Mouse(LBUTTON, CLICK, 480, 60)
--	Sleep(2000)
	-- �� or �� �̵�
--	local rotate = math.random(2) -- 1~2����
--	if(rotate == 1) then
--		Mouse(LBUTTON, DOWN, cx-radius, cy, 0, 0, 0, 0, move_delay, 1, FASTEST)
--	else
--		Mouse(LBUTTON, DOWN, cx+radius, cy, 0, 0, 0, 0, move_delay, 1, FASTEST)
--	end
--	Sleep(4000)
--	Mouse(LBUTTON, UP, cx, cy)

--	PassAct(2)

--elseif(dungeon_name[dungeon_index] == '����' and dungeon_floor[dungeon_index] == 2) then -- ����2��

	-- ������ �ɸ� ����(��Ŭ��)
--	Mouse(LBUTTON, CLICK, 950, 280)
--	Sleep(3000)
--	Mouse(LBUTTON, CLICK, 950, 280-80)
--	Sleep(3000)
--	Mouse(LBUTTON, CLICK, 950, 280+120)
--	Sleep(3000)
--	Mouse(LBUTTON, CLICK, 950, 280)
--	Sleep(3000)
	-- �� �̵�
--	Mouse(LBUTTON, DOWN, cx+radius, cy, 0, 0, 0, 0, move_delay, 1, FASTEST)
--	Sleep(14000)
--	Mouse(LBUTTON, UP, cx, cy)

--	PassAct(2)

--elseif(dungeon_name[dungeon_index] == '����' and dungeon_floor[dungeon_index] == 3) then -- ����3��

	-- �� �̵�
--	Mouse(LBUTTON, DOWN, cx-radius, cy, 0, 0, 0, 0, move_delay, 1, FASTEST)
--	Sleep(16000)
--	Mouse(LBUTTON, UP, cx, cy)
   --         Sleep(500)
--	Mouse(LBUTTON, DOWN, cx, cy-radius, 0, 0, 0, 0, move_delay, 1, FASTEST)
--	Sleep(2000)
--	Mouse(LBUTTON, UP, cx, cy)

--	PassAct(2)

--elseif(dungeon_name[dungeon_index] == '����' and dungeon_floor[dungeon_index] == 4) then -- ����4��

	-- �� �̵�
--	Mouse(LBUTTON, DOWN, cx+radius, cy, 0, 0, 0, 0, move_delay, 1, FASTEST)
--	Sleep(8000)
--	Mouse(LBUTTON, UP, cx, cy)

--	PassAct(2)

--elseif(dungeon_name[dungeon_index] == '����' and dungeon_floor[dungeon_index] == 5) then -- ����5��

	-- �� �̵�
--	Mouse(LBUTTON, DOWN, cx, cy-radius, 0, 0, 0, 0, move_delay, 1, FASTEST)
--	Sleep(750)
--	Mouse(LBUTTON, UP, cx, cy)
--	Sleep(500)
--	Mouse(LBUTTON, DOWN, cx+radius, cy, 0, 0, 0, 0, move_delay, 1, FASTEST)
--	Sleep(15000)
--	Mouse(LBUTTON, UP, cx, cy)

--	PassAct(2)

--elseif(dungeon_name[dungeon_index] == '����' and dungeon_floor[dungeon_index] == 6) then -- ����6��

	-- ����
--	Mouse(LBUTTON, DOWN, cx, cy+radius, 0, 0, 0, 0, move_delay, 1, FASTEST)
--	Sleep(8000)
--	Mouse(LBUTTON, UP, cx, cy)
	-- ������ �ɸ� ����(��Ŭ��)
--	Mouse(LBUTTON, CLICK, 480-100, 90)
--	Mouse(LBUTTON, CLICK, 480, 90)
--	Mouse(LBUTTON, CLICK, 480+100, 90)
--	Sleep(1500)
	-- ����
--	Mouse(LBUTTON, DOWN, cx, cy+radius, 0, 0, 0, 0, move_delay, 1, FASTEST)
--	Sleep(10000)
--	Mouse(LBUTTON, UP, cx, cy)
	-- ������ �ɸ� ����(��Ŭ��)
--	Mouse(LBUTTON, CLICK, 480, 90)
--	Mouse(LBUTTON, CLICK, 480, 60)
--	Sleep(2000)
	-- �� or �� �̵�
--	local rotate = math.random(2) -- 1~2����
--	if(rotate == 1) then
--		Mouse(LBUTTON, DOWN, cx-radius, cy, 0, 0, 0, 0, move_delay, 1, FASTEST)
--	else
--		Mouse(LBUTTON, DOWN, cx+radius, cy, 0, 0, 0, 0, move_delay, 1, FASTEST)
--	end
--	Sleep(4000)
--	Mouse(LBUTTON, UP, cx, cy)

--	PassAct(2)

if(dungeon_name[dungeon_index] == '����' and dungeon_floor[dungeon_index] == 7) then -- ����7��
	PassAct(0)
elseif(dungeon_name[dungeon_index] == '����' and dungeon_floor[dungeon_index] == 8) then -- ����8��
	Keybd('<D_Press>', FASTER, MESSAGE)
	Sleep(15000)
	Keybd('<D_Release>', FASTER, MESSAGE)
	PassAct(4)
elseif(dungeon_name[dungeon_index] == '����' and dungeon_floor[dungeon_index] == 9) then -- ��������
	Keybd('<W_Press>', FASTER, MESSAGE)
	Sleep(1000)
	Keybd('<A_Press>', FASTER, MESSAGE)
	Sleep(1000)
	Keybd('<A_Release>', FASTER, MESSAGE)
	Keybd('<D_Press>', FASTER, MESSAGE)
	Sleep(1000)
	Keybd('<D_Release>', FASTER, MESSAGE)
	Keybd('<A_Press>', FASTER, MESSAGE)
	Sleep(1000)
	Keybd('<A_Release>', FASTER, MESSAGE)
	Keybd('<D_Press>', FASTER, MESSAGE)
	Sleep(1000)
	Keybd('<D_Release>', FASTER, MESSAGE)
	Sleep(1000)
	Keybd('<A_Press>', FASTER, MESSAGE)
	Sleep(1000)
	Keybd('<A_Release>', FASTER, MESSAGE)
	Keybd('<D_Press>', FASTER, MESSAGE)
	Sleep(1000)
	Keybd('<D_Release>', FASTER, MESSAGE)
	Keybd('<A_Press>', FASTER, MESSAGE)
	Sleep(1000)
	Keybd('<A_Release>', FASTER, MESSAGE)
	Keybd('<D_Press>', FASTER, MESSAGE)
	Sleep(1000)
	Keybd('<D_Release>', FASTER, MESSAGE)
	Sleep(2000)
	Keybd('<W_Release>', FASTER, MESSAGE)
	PassAct(4)
end
