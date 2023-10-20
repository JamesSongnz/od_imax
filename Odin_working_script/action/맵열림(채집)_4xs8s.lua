if(gathering == 0 and movebtn_failed < 3) then
	if(gather_point == nil) then
	 gather_point = 'A'
	elseif(gather_point == 'A') then
	 gather_point = 'B'
	elseif(gather_point == 'B') then
	 gather_point = 'A'
	else
	 print('Error: unknown gather_point')
	end
end

if(gather_point == nil or gather_point == 'A') then
 EnableImage(true, 'A지점')
elseif(gather_point == 'B') then
 EnableImage(true, 'B지점')
end
