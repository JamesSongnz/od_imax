vret = ImageSearch('마을안에서')

if(vret == 0) then
 PassAct(0)
elseif(vret == 1) then
 ImageClick("나가기(맵)")
 EnableImage(false, '마을귀환')
 EnableImage(false, "맵확인(5)(2)")
 EnableImage(true, '상점')
 EnableImage(true, '상점카메라')
 EnableImage(true, '소모품상인')
 EnableImage(true, '상점나가기')
 EnableImage(true, '기타')
 eventtick = GetTickCount()
end

vret = nil