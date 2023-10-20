-- map_order 순서대로 진행
pos_y = 170 + (map_order[map_index]-1) * 49
print('맵순서: '..map_order[map_index])
Mouse(LBUTTON, CLICK, 183, pos_y, 0, 0, 20, 5)
