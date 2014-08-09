%this function computes the vector containing fibonacci terms 
function y = fibonacci(x)
	y(1) = 1;
	y(2) = 2;
	for i = 3:x,
		y(i) = y(i-1) + y(i-2);
	end
