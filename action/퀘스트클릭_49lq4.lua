-- 메인퀘 or 서브퀘 or 의뢰퀘 클릭

if(quest_article == 1) then
	ret = ImageSearch('메인마크')
	if(ret == 0) then
--	 print('리스트에 메인퀘가 없습니다.')
	 PassAllAct()
	 return
	end
else
	ret = MultiImage('서브마크|의뢰마크')
	if(ret == 0) then
--	 print('리스트에 서브퀘가 없습니다.')
	 PassAllAct()
	 return
	end
--	rider = 0
end

if(rider == 1) then
 if(quest_fastmove == 1) then
  Mouse(LBUTTON, CLICK, 901, 86 + (quest_article-1)*51)
 elseif(quest_fastmove == 0) then
  PassAct(0)
 end
else
 Mouse(LBUTTON, CLICK, 810, 100 + (quest_article-1)*51)
end
