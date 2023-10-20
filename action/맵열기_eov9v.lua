telpo_0 = ImageSearch('이동석0개')
telpo_1 = ImageSearch('이동석1')
telpo_2 = ImageSearch('이동석2')
telpo_3 = ImageSearch('이동석3')
telpo_4 = ImageSearch('이동석4')
telpo_5 = ImageSearch('이동석5')
telpo_6 = ImageSearch('이동석6')
telpo_mul = MultiImage('이동석1|이동석2|이동석3|이동석4|이동석5|이동석6')

if(mode_ch == 1) then
 if(telpo_mul == 1) then
  if(telpo_0 == 0) then
   print('성채 사냥 설정됨')
   EnableImage(false, '맵이동')
   EnableImage(true, '던전이동')
   EnableImage(true, "메뉴(던전)")
   PassAllAct()
   if(telpo_1 == 1) then
    telpo_suk = 1
   elseif(telpo_2 == 1) then
    telpo_suk = 2
   elseif(telpo_3 == 1) then
    telpo_suk = 3
   elseif(telpo_4 == 1) then
    telpo_suk = 4
   elseif(telpo_5 == 1) then
    telpo_suk = 5
   elseif(telpo_6 == 1) then
    telpo_suk = 6
   end
  elseif(telpo_0 == 1) then
   print('성채 이동석 없음')
   print('맵이동 사냥 진행')
   PassAct(0)
  end
 elseif(telpo_mul == 0) then
  print('성채 이동석 없음')
  print('맵이동 사냥 진행')
  PassAct(0)
 end
elseif(mode_ch == 0) then
 PassAct(0)
end

telpo_1 = nil
telpo_2 = nil
telpo_3 = nil
telpo_4 = nil
telpo_5 = nil
telpo_6 = nil
telpo_mul = nil