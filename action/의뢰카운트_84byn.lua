-- �Ƿ� �����ϰ� 900�� ����� �ٽ� �õ�
--if(GetTickCount() < reqtick + 900000) then
-- PassAllAct()
--end

if(q_timer == 1) then
 if(GetTickCount() < reqtick + 900000) then
  PassAllAct()
 end
elseif(q_timer == 0) then
 PassAllAct()
end