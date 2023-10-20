ret = ImageSearch('시간만료')
if(ret == 1) then
 ret = ImageSearch('충전시간')
 if(ret == 0) then
  PassAllAct()
 end
end
