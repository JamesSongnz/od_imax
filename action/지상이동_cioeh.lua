movebtn_failed = movebtn_failed + 1
print('movebtn_failed: '..movebtn_failed)
if(movebtn_failed >= 3) then
 EnableImage(true, '������(��)')
end
