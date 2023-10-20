ret, acc, ix, iy, sx, sy = ImageSearch('소형물약')
if(ret == 0) then
 ret, acc, ix, iy, sx, sy = ImageSearch('중형물약')
end
if(ret == 0) then
 return
end

local reroi = {sx-5, sy+11, 5, 8}
SetImageROI('물약부족(절전)', reroi)

print('reroi: '..reroi[1]..', '..reroi[2])
