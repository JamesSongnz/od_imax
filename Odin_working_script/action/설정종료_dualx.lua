EnableImage(true, '�����ν�')
EnableImage(true, '����')

function modeDisable()
	EnableImage(false, '����')
	EnableImage(false, '����Ʈ')
	EnableImage(false, '����')
	EnableImage(false, '��Ÿ')
	EnableImage(false, '���̵�')
	EnableImage(false, '�̵�ä��')
	EnableImage(false, '�����̵�')
	EnableImage(false, '20����')
	EnableImage(true, 'HP������')
end

function modeEnable()
	if(playmode == 1) then
	 EnableImage(true, '����Ʈ')
	 EnableImage(true, '����')
	 EnableImage(true, '��Ÿ')
	elseif(playmode == 2) then
	 EnableImage(true, '���̵�')
	elseif(playmode == 3) then
	 EnableImage(true, '�̵�ä��')
	elseif(playmode == 4) then
	 EnableImage(true, '�����̵�')
	 EnableImage(true, '�޴�(����)')
	elseif(playmode == 5) then
	 EnableImage(true, '20����')
	 EnableImage(true, '20�Ŵ�')
	 EnableImage(false, '��Ÿ')
	 EnableImage(false, '�����ν�')
	 EnableImage(false, '����')
	 EnableImage(false, '����')
	end
	eventtick = GetTickCount()
end

modeDisable()
modeEnable()