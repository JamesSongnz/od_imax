-- 게임이 멈추면 앱플레이어 재실행 후 START

if(autorestart == 0) then
 return
end

acc = checkframe()
if(acc >= 100) then -- 프레임이 동일하면
 freezing_cnt = freezing_cnt+1
else
 freezing_cnt = 0
end

if(freezing_cnt > 0) then
 local formatted = string.format("acc: %.1f%%, freezing_cnt: %d", tonumber(acc), freezing_cnt)
 print(formatted)
end

if(freezing_cnt >= maxfreezing_cnt) then -- 인식간격10초*10회=100초(화면정지시)
 freezing_cnt = 0
 print('게임멈추면 자동 재실행')
 SaveScreenshot()
 restartAppplayer()
end
