ret = 0
if(quest_article == 1) then
 ret = ImageSearch('메인마크')
else
 ret = MultiImage('서브마크|의뢰마크')
end

if(ret == 1) then
 ret1 = ImageSearch('퀘진행중') 
 ret2 = ImageSearch('퀘진행중(2)') 
 if(ret1 == 1 or ret2 == 1) then
  eventtick = GetTickCount()
 end
end
