-- map_order ������� ����
pos_y = 204 + (map_order[map_index]-1) * 51
print('���� ����: '..map_order[map_index])
Mouse(LBUTTON, CLICK, 280, pos_y, 0, 0, 5, 5)
