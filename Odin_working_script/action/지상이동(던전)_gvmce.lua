-- 던전 입장 후 순줌 이동

local telpocnt = 0
for i=1,1000 do
 if(IsStop() == 1) then break end
 if(telpocnt >= dungeon_telpo) then break end
 retHPseed = ImageSearch('HPseed')
 if(retHPseed == 1) then
  ret = 0 -- ImageClick('텔포')
  if(ret == 0) then
--   print('')
--   print('보이는 슬롯에 순간이동주문서가 없습니다.')
--   Sleep(4000)
   if(invUseTelpo() == 0) then
    print('가방에 순간이동주문서가 없습니다.')
   end
--   EnableImage(true, '귀환')
--   need_telpo = 1
   break
  end
  telpocnt = telpocnt+1
 end
 Sleep(500)
end

dungeon_telpo = dungeon_telpo_backup
