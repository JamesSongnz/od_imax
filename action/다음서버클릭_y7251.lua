-- click next server in serverlist window
---------------------------
server_coodi_g_x = 143   -- 316 
server_coodi_g_y = 170   
-- y : g2 :350 420 
 -- 현재 서버 그룹 비교 
function ClickNextServer(group_name, gindex)

	if ( server_cur_name == group_name) then 
		
		print('Found server group '..group_name) 
		if server_next_no <= 5 then 
			Mouse(LBUTTON, CLICK, server_coodi_g_x + (server_next_no -1 ) * 170, server_coodi_g_y + 90 * (gindex*2))
		else
		 -- click next no
			Mouse(LBUTTON, CLICK, server_coodi_g_x + (server_next_no -5 -1 ) * 170, server_coodi_g_y + 90 * (gindex*2 +1))
		end 

		-- 서버 진입
		print('서버에 진입합니다.11')
		EnableImage(true, '서버진입시작')
		EnableImage(false, '서버그룹드래그다운')
		EnableImage(false, '서버선택종료대기')
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

--EnableImage(true, '서버2그룹비교')
print('서버 드래그 다운으로 ...')
EnableImage(true, '서버그룹드래그다운')
	
 --??? PassAllAct()
