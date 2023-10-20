EnableImage(true, '마을인식')
EnableImage(true, '접속')

function modeDisable()
	EnableImage(false, '접속')
	EnableImage(false, '퀘스트')
	EnableImage(false, '전투')
	EnableImage(false, '기타')
	EnableImage(false, '맵이동')
	EnableImage(false, '이동채집')
	EnableImage(false, '던전이동')
	EnableImage(false, '20미터')
	EnableImage(true, 'HP부족시')
end

function modeEnable()
	if(playmode == 1) then
	 EnableImage(true, '퀘스트')
	 EnableImage(true, '전투')
	 EnableImage(true, '기타')
	elseif(playmode == 2) then
	 EnableImage(true, '맵이동')
	elseif(playmode == 3) then
	 EnableImage(true, '이동채집')
	elseif(playmode == 4) then
	 EnableImage(true, '던전이동')
	 EnableImage(true, '메뉴(던전)')
	elseif(playmode == 5) then
	 EnableImage(true, '20미터')
	 EnableImage(true, '20매뉴')
	 EnableImage(false, '기타')
	 EnableImage(false, '마을인식')
	 EnableImage(false, '접속')
	 EnableImage(false, '전투')
	end
	eventtick = GetTickCount()
end

modeDisable()
modeEnable()