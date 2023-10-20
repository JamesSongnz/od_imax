-- try +1 
svr_list_scroll_try = svr_list_scroll_try +1
print('==== ¹Ù´Ú: '..svr_list_scroll_try)
if (svr_list_scroll_try > 4 ) then 
	print('¼­¹ö ¸®½ºÆ® ¹Ù´Ú... ')
	EnableImage(true, '½ºÅ©·Ñ¹Ù´ÚµµÂø')
	PassAllAct()
	return 
end