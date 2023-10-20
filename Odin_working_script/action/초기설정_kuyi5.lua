-- [통발] 모드                      

if(initstep ~= 0) then
 print('변수 설정에 체크하세요.')
 Stop()
 return
end

if(playmode ~= 0) then
 print('모드는 하나만 선택하세요.')
 Stop()
 return
end

playmode = 5
