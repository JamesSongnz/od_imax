if(party_d == 1) then
 EnableImage(true, '로딩중')
 EnableImage(true, "매뉴(던전)")
 EnableImage(false, '던전이동')
 EnableImage(false, '입장가능')
 dungeonTimeoutNext()
 ImageClick('나가기(맵)')
 Sleep(4000)
 PassAllAct()
end