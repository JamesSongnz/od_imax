-- ������ ���߸� ���÷��̾� ����� �� START

if(autorestart == 0) then
 return
end

acc = checkframe()
if(acc >= 100) then -- �������� �����ϸ�
 freezing_cnt = freezing_cnt+1
else
 freezing_cnt = 0
end

if(freezing_cnt > 0) then
 local formatted = string.format("acc: %.1f%%, freezing_cnt: %d", tonumber(acc), freezing_cnt)
 print(formatted)
end

if(freezing_cnt >= maxfreezing_cnt) then -- �νİ���10��*10ȸ=100��(ȭ��������)
 freezing_cnt = 0
 print('���Ӹ��߸� �ڵ� �����')
 SaveScreenshot()
 restartAppplayer()
end
