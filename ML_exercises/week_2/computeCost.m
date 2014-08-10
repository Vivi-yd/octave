function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

%Initialize some useful values

m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.


%for each training example compute the error square term and sum them up
	for i=1:m,	
		%theta transpose is 1x2 vector
		% X(i, :)' is 2x1 vector of the ith training set. (contain 0th feature X_0 = 1)
		J = J + (theta' * X(i, :)'  - y(i))^2; 
	end
%compute the cost by definition
	J = 1/(2*m) * J; 

%=========================================================================

end
