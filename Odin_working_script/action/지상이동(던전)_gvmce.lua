-- ���� ���� �� ���� �̵�

local telpocnt = 0
for i=1,1000 do
 if(IsStop() == 1) then break end
 if(telpocnt >= dungeon_telpo) then break end
 retHPseed = ImageSearch('HPseed')
 if(retHPseed == 1) then
  ret = 0 -- ImageClick('����')
  if(ret == 0) then
--   print('')
--   print('���̴� ���Կ� �����̵��ֹ����� �����ϴ�.')
--   Sleep(4000)
   if(invUseTelpo() == 0) then
    print('���濡 �����̵��ֹ����� �����ϴ�.')
   end
--   EnableImage(true, '��ȯ')
--   need_telpo = 1
   break
  end
  telpocnt = telpocnt+1
 end
 Sleep(500)
end

dungeon_telpo = dungeon_telpo_backup
