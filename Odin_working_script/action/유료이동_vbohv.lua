er_ret = ImageSearch('�ش��')

if(er_ret == 1) then
 Mouse(LBUTTON, CLICK, 810, 100 + (quest_article-1)*51)
elseif(er_ret == 0) then
 PassAct(0)
end