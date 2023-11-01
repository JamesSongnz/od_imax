-- sel nextt server
--server_cur_name = '하하'
--server_cur_no = 1


-- TODO: 
-- 1 . 전체 서버 종료 조건 확인. ->  멈춤. 대기로. --> 4시 초기화. ( 단, 메인캐릭 서버 접속해야함. ) 
-- 2.  OCR 1 -> 7 로 오인식시 2로 대체 

-- 다음 서버 그룹으로 이동 



-- n초 후 진행
server_list = { "오딘", "토르", "로키", "프레이야", "헤임달", "티르", "발두르", "이둔", "미미르", "수르트","서버방문완료" }
-- 59/21
server_list_ext = { 
{"오딘", "오민", "모딘", "모민"}, 
{"토르", "도르", "토?"}, 
{"로키", "로기" , "도키", "도기"}, 
{"프레이야", "프래이야", "프례이야", "프레이마", "프레미먀", "프레미마", "프래미먀", "프례미먀"}, 
{"헤임달", "혜임달", "혜밍달", "헤밍달", "헤잉달", "혜잉달", "헤임달_", "헤임말", "혜임말" ,"헤임탈", "혜임탈"}, 
{"티르" ,"티?"}, {"발두르"}, {"이둔","이문"}, {"미미르"}, 
{"수르트", "수르드", "추르트", "추르드"},
{"서버방문완료" } }


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
	return "잘못된 서버"
end

print(' Got SvrName: '..server_cur_name)
server_cur_name = getOriginServerName(server_cur_name)
print(' Get Origin SvrName: '..server_cur_name)

--- 서버인식 오류 이면,  다시 스캔하기 
if (server_cur_name == "잘못된 서버") then 
print('잘못된 서버로 인해 다시 서버 스캔시작함')
	-- no need :!! Mouse(LBUTTON, CLICK, 900, 51)
	PassAllAct()
	GotoImage('서버이름')
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
	
	print( '이동할 서버 정보 : '..server_cur_name..'  no: '..server_next_no .. ' Iteration cnt : ' .. iteration_no)
end


getNextServer()


-- 종료 조건 
if(server_cur_name=="서버방문완료" and server_next_no==1) then 
	print('$$$$$$$$$$$$$$ 서버 순환 완료 $$$$$$$$$$$= 던전모드')
	-- TODO : 다음 작업 구상. 
	--EnableImage(false, '==서버이동하기')
	--EnableImage(false, '==캐쉬받기시작')
	
	--EnableImage(true, '메인캐릭로그인')
	--EnableImage(true, '4시초기화설정')
	
	--print(' 서버 이동 작업을 완료하여  Stop 합니다. ...  GooD!!')
	--Stop()
	--return
	
	-- rotation  from beginning 
	print(' 서버 이동 작업을 완료하여  다시 처음부터 시작합니다. ')
	server_cur_name = '오딘'
	server_cur_no = 1
	-- 발두르5
	--EnableImage(false, '초기화-서버')
	--GotoImage("초기화-서버")
	--PassAllAct()
	--return
end
