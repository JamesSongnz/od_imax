telpo_0 = ImageSearch('�̵���0��')
telpo_1 = ImageSearch('�̵���1')
telpo_2 = ImageSearch('�̵���2')
telpo_3 = ImageSearch('�̵���3')
telpo_4 = ImageSearch('�̵���4')
telpo_5 = ImageSearch('�̵���5')
telpo_6 = ImageSearch('�̵���6')
telpo_mul = MultiImage('�̵���1|�̵���2|�̵���3|�̵���4|�̵���5|�̵���6')

if(mode_ch == 1) then
 if(telpo_mul == 1) then
  if(telpo_0 == 0) then
   print('��ä ��� ������')
   EnableImage(false, '���̵�')
   EnableImage(true, '�����̵�')
   EnableImage(true, "�޴�(����)")
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
   print('��ä �̵��� ����')
   print('���̵� ��� ����')
   PassAct(0)
  end
 elseif(telpo_mul == 0) then
  print('��ä �̵��� ����')
  print('���̵� ��� ����')
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