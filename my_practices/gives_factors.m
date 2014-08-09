% function that returns all factors of a given number x

funtion y = gives_factors (x)
	y = []
	for i = 1:x,
		if mod(x, i) == 0,
			y = [y, [i]];
	end	