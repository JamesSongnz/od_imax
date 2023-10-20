eowkd_ret = ImageSearch('대장간캐릭')

if(eowkd_ret == 1) then
 PassAct(0)
elseif(eowkd_ret == 0) then
 GotoImage(대장간)
 PassAllAct()
end

eowkd_ret = nil