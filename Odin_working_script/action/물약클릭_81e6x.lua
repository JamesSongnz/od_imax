-- ������ HP���� ������ ���� Ŭ��

ret, acc, ix, iy = ImageSearch('����(����)')
if(ret == 1) then
 if(map_potion == '����') then
  Mouse(LBUTTON, CLICK, ix+60, iy+10, 0, 0, 20, 10)
 elseif(map_potion == '����') then
  Mouse(LBUTTON, CLICK, ix+60, iy+10+77, 0, 0, 20, 10)
 elseif(map_potion == '����') then
  Mouse(LBUTTON, CLICK, ix+60, iy+10+154, 0, 0, 20, 10)
 else
  print('map_potion error')
 end
 return
end

ret, acc, ix, iy = ImageSearch('����(����)')
if(ret == 1) then
 if(map_potion == '����' or map_potion == '����') then
  Mouse(LBUTTON, CLICK, ix+60, iy+10, 0, 0, 20, 10)
 elseif(map_potion == '����') then
  Mouse(LBUTTON, CLICK, ix+60, iy+10+77, 0, 0, 20, 10)
 else
  print('map_potion error')
 end
 return
end

ret, acc, ix, iy = ImageSearch('����(����)')
if(ret == 1) then
 Mouse(LBUTTON, CLICK, ix+60, iy+10, 0, 0, 20, 10)
 return
end
