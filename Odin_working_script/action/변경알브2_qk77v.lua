not_map = ImageSearch('�߰�')

if(not_map == 1) then
 Mouse(LBUTTON, CLICK, 31, 74)
 Sleep(1000)
 EnableImage(false, '����˺�2')
 EnableImage(true, '�����ȯ2')
 PassAllAct()
elseif(not_map == 0) then
 PassAct(0)
end

not_map = nil