-- try +1 
svr_list_scroll_try = svr_list_scroll_try +1
print('==== �ٴ�: '..svr_list_scroll_try)
if (svr_list_scroll_try > 4 ) then 
	print('���� ����Ʈ �ٴ�... ')
	EnableImage(true, '��ũ�ѹٴڵ���')
	PassAllAct()
	return 
end