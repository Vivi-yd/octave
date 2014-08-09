% function that returns all factors of a given number x

funtion y = gives_factors (x)
	y = []
	for i = 1:x,
		if mod(x, i) == 0,
			y = [y, [i]];
	end	

%added by ashu
%this function computes the vector containing fibonacci terms
function y = give_factors(x)
	j = 1
	for i = 1:x,
		if mod(x, i) == 0,
			y(j) = i;
			j = j + 1;
		end
	end				
