-- click next server in serverlist window
---------------------------
server_coodi_g_x = 143   -- 316 
server_coodi_g_y = 170   
-- y : g2 :350 420 
 -- ���� ���� �׷� �� 
function ClickNextServer(group_name, gindex)

	if ( server_cur_name == group_name) then 
		
		print('Found server group '..group_name) 
		if server_next_no <= 5 then 
			Mouse(LBUTTON, CLICK, server_coodi_g_x + (server_next_no -1 ) * 170, server_coodi_g_y + 90 * (gindex*2))
		else
		 -- click next no
			Mouse(LBUTTON, CLICK, server_coodi_g_x + (server_next_no -5 -1 ) * 170, server_coodi_g_y + 90 * (gindex*2 +1))
		end 

		-- ���� ����
		print('������ �����մϴ�.11')
		EnableImage(true, '�������Խ���')
		EnableImage(false, '�����׷�巡�״ٿ�')
		EnableImage(false, '��������������')
		return true
	end
	
	return false
end


if ( ClickNextServer(server_g1_name, 0)) then 
	return 
end

if ( ClickNextServer(server_g2_name, 1)) then 
	return 
end

--EnableImage(true, '����2�׷��')
print('���� �巡�� �ٿ����� ...')
EnableImage(true, '�����׷�巡�״ٿ�')
	
 --??? PassAllAct()
