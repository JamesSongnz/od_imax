-- map_order 순서대로 진행
pos_y = 204 + (map_order[map_index]-1) * 51
print('은총 순서: '..map_order[map_index])
Mouse(LBUTTON, CLICK, 280, pos_y, 0, 0, 5, 5)
