vret = ImageSearch('�����ȿ���')

if(vret == 0) then
 PassAct(0)
elseif(vret == 1) then
 ImageClick("������(��)")
 EnableImage(false, '������ȯ')
 EnableImage(false, "��Ȯ��(5)(2)")
 EnableImage(true, '����')
 EnableImage(true, '����ī�޶�')
 EnableImage(true, '�Ҹ�ǰ����')
 EnableImage(true, '����������')
 EnableImage(true, '��Ÿ')
 eventtick = GetTickCount()
end

vret = nil