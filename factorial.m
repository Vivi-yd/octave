%code to compute factorial
function y = factorial(x)
	fact = 1;
	for i = 1:x, 
		fact = fact * i;
	end;

	y = fact;
