if(timeout_roi == nil) then
 timeout_roi = GetImageROI('�ð�����')
 timeout_reroi = TableCopy(timeout_roi)
end
if(charging_roi == nil) then
 charging_roi = GetImageROI('�����ð�')
 charging_reroi = TableCopy(charging_roi)
end
timeout_reroi[1] = timeout_roi[1] + 0
--print('timeout_reroi: '..timeout_roi[1], timeout_reroi[1], timeout_reroi[2], timeout_reroi[3], timeout_reroi[4])
SetImageROI('�ð�����', timeout_reroi)
charging_reroi[1] = charging_roi[1] + 0
SetImageROI('�����ð�', charging_reroi)
