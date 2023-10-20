-- 빠른이동 or 지상이동 클릭
if(map_fastmove == 1) then
 Mouse(LBUTTON, CLICK, movebtn.ix+14, movebtn.iy)
 Mouse(LBUTTON, CLICK, movebtn.ix+14, movebtn.iy)
else
 Mouse(LBUTTON, CLICK, movebtn.ix-98, movebtn.iy)
 Mouse(LBUTTON, CLICK, movebtn.ix-98, movebtn.iy)
 EnableImage(true, '나가기(맵이동)')
end
