not_map = ImageSearch('발견')

if(not_map == 1) then
 Mouse(LBUTTON, CLICK, 31, 74)
 Sleep(1000)
 EnableImage(false, '변경아스')
 EnableImage(true, '변경귀환')
 PassAllAct()
elseif(not_map == 0) then
 PassAct(0)
end

not_map = nil