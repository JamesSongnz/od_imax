if(quest_fastmove == 1) then
 PassAct(0)
elseif(quest_fastmove == 0) then
 ImageClick("취소(빠른이동)")
 Sleep(500)
 PassAct(1)
end