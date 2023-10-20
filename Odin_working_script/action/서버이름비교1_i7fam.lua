-- 서버 이름 추출

server_g1_name = string.gsub(server_1_1, "%d", "")
server_g1_no = string.gsub(server_1_1, "%D", "")
 print(' G1 : server '..server_g1_name..' No :'..server_g1_no)
 
  
server_g2_name= string.gsub(server_2_1, "%d", "")
server_g2_no = string.gsub(server_2_1, "%D", "")
 print(' G2 : server '..server_g2_name..' No :'..server_g2_no)
 
 
 
