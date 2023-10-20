ret = MultiImage('N1|N2|S1|S2')
if(ret == 1) then return end

cx = 480
y = 280
radius = 100
sx = cx+radius
ex = cx-radius

imagesearch_refresh = 1
Mouse(LBUTTON, DOWN, sx, y)
Sleep(200)

ret = 0
local delta = -10 -- 시계방향으로 돌려야함
local lastx = sx
local move_delay = 0.02
for i=sx+delta, ex, delta do
 ret = MultiImage('N1|N2|S1|S2')
 if(ret == 1) then break end
 Mouse(LBUTTON, MOVE, i, y, 0, 0, 0, 0, move_delay, 1, FASTEST)
 lastx = i
end
print('ret: '..ret)
Sleep(200)

delta = 5
move_delay = 0.1
-- 반대로 천천히 돌아야함
if(ret == 1) then
	for i=lastx+delta, lastx+20, delta do
	 ret = MultiImage('N1|S1')
	 if(ret == 1) then break end
	 Mouse(LBUTTON, MOVE, i, y, 0, 0, 0, 0, move_delay, 1, FASTEST)
	 lastx = i
	end
end
Sleep(100)

Mouse(LBUTTON, UP, lastx, y)
imagesearch_refresh = 0
