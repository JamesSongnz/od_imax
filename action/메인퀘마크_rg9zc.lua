if(quest_article ~= 1) then
 EnableImage(false, '메인퀘마크')
end

if(GetTickCount() < eventtick + 4000) then
 PassAllAct()
end
