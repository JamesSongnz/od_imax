if(timeout_roi == nil) then
 timeout_roi = GetImageROI('시간만료')
 timeout_reroi = TableCopy(timeout_roi)
end
if(charging_roi == nil) then
 charging_roi = GetImageROI('충전시간')
 charging_reroi = TableCopy(charging_roi)
end
timeout_reroi[1] = timeout_roi[1] + 306
SetImageROI('시간만료', timeout_reroi)
charging_reroi[1] = charging_roi[1] + 306
SetImageROI('충전시간', charging_reroi)
