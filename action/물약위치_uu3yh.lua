ret, acc, ix, iy, sx, sy = ImageSearch('��������')
if(ret == 0) then
 ret, acc, ix, iy, sx, sy = ImageSearch('��������')
end
if(ret == 0) then
 return
end

local reroi = {sx-5, sy+11, 5, 8}
SetImageROI('�������(����)', reroi)

print('reroi: '..reroi[1]..', '..reroi[2])
