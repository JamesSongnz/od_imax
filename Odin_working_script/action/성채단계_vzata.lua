-- ������ ������(�ܰ�) Ŭ��
print('��ä '..telpo_suk..'�ܰ� �̵�')
iy = 83 + (telpo_suk-1)*55
Mouse(LBUTTON, CLICK, 140, iy)
if(telpo_suk ~= 1) then -- 1���� �ƴϸ� �ѹ���Ŭ��
 Mouse(LBUTTON, CLICK, 140, iy)
end