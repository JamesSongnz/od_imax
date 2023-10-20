-- 이름 생성

new_string = '발키리'
for i = 1, 2, 1 do
    new_string = new_string..string.char(math.random(0x41, 0x5A))
end
for i = 1, 2, 1 do
    new_string = new_string..string.char(math.random(0x30, 0x39))
end


new_name = new_string
print('이름을 입력합니다.: '..new_name)
--Keybd(new_string)
Keybd(new_name ,FASTEST, MESSAGE)