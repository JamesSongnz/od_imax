-- 설정된 던전층(단계) 클릭
print('성채 '..telpo_suk..'단계 이동')
iy = 83 + (telpo_suk-1)*55
Mouse(LBUTTON, CLICK, 140, iy)
if(telpo_suk ~= 1) then -- 1층이 아니면 한번더클릭
 Mouse(LBUTTON, CLICK, 140, iy)
end