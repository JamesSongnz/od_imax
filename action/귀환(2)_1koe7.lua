vret = ImageSearch('�����ȿ���')

if(vret == 0) then
 PassAct(0)
elseif(vret == 1) then
 EnableImage(false, "��ȯ(2)")
 EnableImage(true, '������2')
 PassAllAct()
end

vret = nil