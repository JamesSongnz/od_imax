eowkd_ret = ImageSearch('���尣ĳ��')

if(eowkd_ret == 1) then
 PassAct(0)
elseif(eowkd_ret == 0) then
 GotoImage(���尣)
 PassAllAct()
end

eowkd_ret = nil