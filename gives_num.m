%this function gives all intergers up to x in a vector

function y = gives_num (x)
	
	y = [1];
	for i = 2:x,
		y = [y, [i]];
	end	
