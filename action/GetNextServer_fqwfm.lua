-- sel nextt server
--server_cur_name = '����'
--server_cur_no = 1


-- TODO: 
-- 1 . ��ü ���� ���� ���� Ȯ��. ->  ����. ����. --> 4�� �ʱ�ȭ. ( ��, ����ĳ�� ���� �����ؾ���. ) 
-- 2.  OCR 1 -> 7 �� ���νĽ� 2�� ��ü 

-- ���� ���� �׷����� �̵� 



-- n�� �� ����
server_list = { "����", "�丣", "��Ű", "�����̾�", "���Ӵ�", "Ƽ��", "�ߵθ�", "�̵�", "�̸̹�", "����Ʈ","�����湮�Ϸ�" }
-- 59/21
server_list_ext = { 
{"����", "����", "���", "���"}, 
{"�丣", "����", "��?"}, 
{"��Ű", "�α�" , "��Ű", "����"}, 
{"�����̾�", "�����̾�", "�����̾�", "�����̸�", "�����̸�", "�����̸�", "�����̸�", "���ʹ̸�"}, 
{"���Ӵ�", "���Ӵ�", "���ִ�", "��ִ�", "���״�", "���״�", "���Ӵ�_", "���Ӹ�", "���Ӹ�" ,"����Ż", "����Ż"}, 
{"Ƽ��" ,"Ƽ?"}, {"�ߵθ�"}, {"�̵�","�̹�"}, {"�̸̹�"}, 
{"����Ʈ", "������", "�߸�Ʈ", "�߸���"},
{"�����湮�Ϸ�" } }


function getOriginServerName(name)
	for i, names in ipairs(server_list_ext) do
	
	-- get ext group name 
		
		--print('== getOriginServerName: i :'..i)
		for j = 1, #names do 
			--print( ' == servernames: '..names[j])
			if ( name == names[j]) then 
				-- found , return original name
				return server_list[i]
			end
		end
	end
	return "�߸��� ����"
end

print(' Got SvrName: '..server_cur_name)
server_cur_name = getOriginServerName(server_cur_name)
print(' Get Origin SvrName: '..server_cur_name)

--- �����ν� ���� �̸�,  �ٽ� ��ĵ�ϱ� 
if (server_cur_name == "�߸��� ����") then 
print('�߸��� ������ ���� �ٽ� ���� ��ĵ������')
	-- no need :!! Mouse(LBUTTON, CLICK, 900, 51)
	PassAllAct()
	GotoImage('�����̸�')
	return 
end

function getNextServer()

	-- server no +1 : first : use OCR no ; or  use prev no. 
	if( iteration_no == 0) then 
		server_next_no = server_cur_no +1

	else 
		server_next_no = server_next_no +1 
	end

	iteration_no = iteration_no + 1
		
	-- move to next server group 
	for i = 1, #server_list-1 do 
			
		if(server_next_no == 10 and server_cur_name == server_list[i] ) then
			server_cur_name = server_list[i+1]
			server_next_no = 1
			break
		end
	end
	
	print( '�̵��� ���� ���� : '..server_cur_name..'  no: '..server_next_no .. ' Iteration cnt : ' .. iteration_no)
end


getNextServer()


-- ���� ���� 
if(server_cur_name=="�����湮�Ϸ�" and server_next_no==1) then 
	print('$$$$$$$$$$$$$$ ���� ��ȯ �Ϸ� $$$$$$$$$$$= �������')
	-- TODO : ���� �۾� ����. 
	--EnableImage(false, '==�����̵��ϱ�')
	--EnableImage(false, '==ĳ���ޱ����')
	
	--EnableImage(true, '����ĳ���α���')
	--EnableImage(true, '4���ʱ�ȭ����')
	
	--print(' ���� �̵� �۾��� �Ϸ��Ͽ�  Stop �մϴ�. ...  GooD!!')
	--Stop()
	--return
	
	-- rotation  from beginning 
	print(' ���� �̵� �۾��� �Ϸ��Ͽ�  �ٽ� ó������ �����մϴ�. ')
	server_cur_name = '����'
	server_cur_no = 1
	-- �ߵθ�5
	--EnableImage(false, '�ʱ�ȭ-����')
	--GotoImage("�ʱ�ȭ-����")
	--PassAllAct()
	--return
end
