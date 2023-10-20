res_ret = ImageSearch('복구버튼')

if(res_ret == 0) then
 PassAct(0)
elseif(res_ret == 1) then
 ImageClick('복구버튼')
 Sleep(1000)
 res1_ret = ImageSearch('복구창')
	if(res1_ret == 0) then
	 res_ret = nil
	 res1_ret = nil
	 PassAct(0)
	elseif(res1_ret == 1) then
	 res2_ret = ImageSearch('복구3회')
		if(res2_ret == 0) then
		 Mouse(LBUTTON, CLICK, 680, 90)
		 Sleep(1000)
		 PassAct(0)
		elseif(res2_ret == 1) then
		 if(playmode == 1)then
		  Stop()
		  PassAllAct()
		 elseif(playmode == 4) then
			if(exp_restoration == 0) then
			 Stop()
		  	 PassAllAct()
			elseif(exp_restoration == 1) then
		  	 Mouse(LBUTTON, CLICK, 470, 280)
		 	 Sleep(1000)
		  	 Mouse(LBUTTON, CLICK, 490, 435)
		 	 Sleep(1000)
		  	 Mouse(LBUTTON, CLICK, 680, 90)
		 	 Sleep(1000)
		  	 PassAllAct()
			 dungeonTimeoutNext()
			elseif(exp_restoration == 2) then
		  	 Mouse(LBUTTON, CLICK, 470, 280)
		 	 Sleep(1000)
		  	 Mouse(LBUTTON, CLICK, 490, 435)
		 	 Sleep(1000)
		  	 Mouse(LBUTTON, CLICK, 680, 90)
		 	 Sleep(1000)
			end
		 elseif(playmode == 2) then
			if(exp_restoration == 0) then
			 Stop()
		  	 PassAllAct()
			elseif(exp_restoration == 1) then
		  	 Mouse(LBUTTON, CLICK, 470, 280)
		 	 Sleep(1000)
		  	 Mouse(LBUTTON, CLICK, 490, 435)
		 	 Sleep(1000)
		  	 Mouse(LBUTTON, CLICK, 680, 90)
		 	 Sleep(1000)
			elseif(exp_restoration == 2) then
		  	 Mouse(LBUTTON, CLICK, 470, 280)
		 	 Sleep(1000)
		  	 Mouse(LBUTTON, CLICK, 490, 435)
		 	 Sleep(1000)
		  	 Mouse(LBUTTON, CLICK, 680, 90)
		 	 Sleep(1000)
			end
		 elseif(playmode == 3) then
		  Mouse(LBUTTON, CLICK, 680, 90)
		  Sleep(1000)
		  PassAllAct()
		 elseif(playmode == 5) then
		  Mouse(LBUTTON, CLICK, 680, 90)
		  Sleep(1000)
		  PassAllAct()
		 end
		end
	end
end

res_ret = nil
res1_ret = nil
res2_ret = nil