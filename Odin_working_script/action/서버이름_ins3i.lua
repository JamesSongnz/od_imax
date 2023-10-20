-- 서버 OCR 없을때 서버변경창임. 

if ( server_cur_name == nil or  server_cur_name == "") then 
		GotoImage(true, '첫실행화면확인')
		PassAllAct()
		return
end 