-- 구매할 HP물약 종류에 따라 클릭

ret, acc, ix, iy = ImageSearch('대형(상점)')
if(ret == 1) then
 if(map_potion == '대형') then
  Mouse(LBUTTON, CLICK, ix+60, iy+10, 0, 0, 20, 10)
 elseif(map_potion == '중형') then
  Mouse(LBUTTON, CLICK, ix+60, iy+10+77, 0, 0, 20, 10)
 elseif(map_potion == '소형') then
  Mouse(LBUTTON, CLICK, ix+60, iy+10+154, 0, 0, 20, 10)
 else
  print('map_potion error')
 end
 return
end

ret, acc, ix, iy = ImageSearch('중형(상점)')
if(ret == 1) then
 if(map_potion == '대형' or map_potion == '중형') then
  Mouse(LBUTTON, CLICK, ix+60, iy+10, 0, 0, 20, 10)
 elseif(map_potion == '소형') then
  Mouse(LBUTTON, CLICK, ix+60, iy+10+77, 0, 0, 20, 10)
 else
  print('map_potion error')
 end
 return
end

ret, acc, ix, iy = ImageSearch('소형(상점)')
if(ret == 1) then
 Mouse(LBUTTON, CLICK, ix+60, iy+10, 0, 0, 20, 10)
 return
end
