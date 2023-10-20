-- 현재 서버 이름
print(' :Server: 현재 서버: '..server_name)

svr_list_scroll_try = 0

function remove_non_char(str)
    -- 한글이 아닌 문자를 공백으로 대체합니다.
    local result = string.gsub(str, "(\164\211)", "")
	--print(' remove try1 : ' .. result)
	 result = string.gsub(result, "(\163\236)", "")
	--print(' remove try2 : ' .. result)
    return result
end

function replace_non_korean_and_numeric(str)
    -- 한글 완성형 코드 범위: U+AC00 ~ U+D7A3 (UTF-8 인코딩)
    local korean_pattern = "[\226\176\128-\237\191\163]"
    -- 숫자 패턴
    local numeric_pattern = "[0-9]"
    
    -- 한글과 숫자가 아닌 문자를 공백으로 대체
    local replaced = string.gsub(str, "[^" .. korean_pattern .. numeric_pattern .. "]", " ")
    return replaced
end

--local original = "안녕하세요, -|  =l +ㅣ  Hello 123 World! ㅣ l | "
--local result = replace_non_korean_and_numeric(original)
--print(result)

--local result2 = remove_non_char(original)
--print(result2)



function print_string_codes(str)
    for i = 1, #str do
        local byte_value = string.byte(str, i)
        print("Char: " .. str:sub(i, i) .. ", Code: " .. byte_value)
    end
end

--local test_string = "안녕"
--print_string_codes(test_string)
--print(' test : ' .. '\164\211')
--print(' test2 : ' .. '\163\236')

--print_string_codes(server_name)

--------------------------------------------------------

--server_name = replace_non_korean_and_numeric(server_name)
local server_name = remove_non_char(server_name)
print('no 제거 전: '..server_name)
server_cur_name = string.gsub(server_name, "%d", "")
print('제거후 '..server_cur_name)



----------  extract server no  


function get_two_chars_after_substring(str, substring)
    local start_pos, end_pos = string.find(str, substring)
    if start_pos then
        local target_chars = string.sub(str, end_pos + 1, end_pos + 2)
        return target_chars
    else
        return nil, "Substring not found"
    end
end

local main_string = "Hello, find20!"
local substring = "find"

local chars, err = get_two_chars_after_substring(main_string, substring)
if chars then
    print("Characters found: " .. chars)
else
    print("Error: " .. err)
end


local server_cur_no_str, err = get_two_chars_after_substring(server_name, server_cur_name)

--local server_cur_no_str_all = string.gsub(server_name, "%D", "")
--server_cur_no_str = string.sub(server_cur_no_str_all, 1, 2)
--print('No: all: '..server_cur_no_str_all..' num : '..server_cur_no_str)

if ( server_cur_no_str ~= nil and  server_cur_no_str ~= "") then 
    print(" OCR Cur no : " .. server_cur_no_str)
	server_cur_no = tonumber(server_cur_no_str) % 10
else 
	server_cur_no = 1 -- default 
end

--local input_string = "안녕하세요, |  Hello, ㅣ 1234, 한글만 남기기!"
--local cleaned_string = remove_non_char(input_string)
--print(' 제외 test '..cleaned_string)  -- 출력: 안녕하세요한글만남기기

