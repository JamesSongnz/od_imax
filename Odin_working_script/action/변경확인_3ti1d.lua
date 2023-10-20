vret = ImageSearch('마을안에서')

if(vret == 0) then
 PassAllAct()
elseif(vret == 1) then
 ImageClick("나가기(맵)")
end

vret = nil