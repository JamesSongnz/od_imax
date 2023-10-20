if(dungeon_floor[dungeon_index] == 0) then
 EnableImage(false, '던전이동')
 EnableImage(false, "1층(던전)")
 EnableImage(true, '던전단계')
 EnableImage(true, '1단')
 print('입장 가능한 최고층 입장')
 PassAllAct()
end
