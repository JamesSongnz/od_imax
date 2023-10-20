-- gathermap_order 순서대로 진행
if(gathering == 0 and movebtn_failed < 3) then
 gathermap_index = gathermap_index+1
 if(gathermap_index > #gathermap_order) then
  gathermap_index = 1
 end
 print('gathermap_index: '..gathermap_index)
end

pos_y = 170 + (gathermap_order[gathermap_index]-1) * 49
print('맵순서(채집): '..gathermap_order[gathermap_index])
Mouse(LBUTTON, CLICK, 183, pos_y, 0, 0, 20, 5)

gathering = 0
movebtn_failed = 0
