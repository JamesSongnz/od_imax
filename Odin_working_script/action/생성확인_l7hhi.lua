-- �̸� ����

new_string = '��Ű��'
for i = 1, 2, 1 do
    new_string = new_string..string.char(math.random(0x41, 0x5A))
end
for i = 1, 2, 1 do
    new_string = new_string..string.char(math.random(0x30, 0x39))
end


new_name = new_string
print('�̸��� �Է��մϴ�.: '..new_name)
--Keybd(new_string)
Keybd(new_name ,FASTEST, MESSAGE)