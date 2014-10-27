function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%

% initialize cost
cost = 0

% iterate from 1 to m
for i = 1:m,
	% the h(x) for classification 
	hypothesis = sigmoid(X(i,:)*theta);
	
	% incrementing the cost
	cost = cost + ((-1)* y(i) * log(hypothesis)) - (1-y(i)) * log(1- hypothesis);
	
	end

n = size(theta); % the dimensions of theta


J = (1/m) * cost; % divide the whole cost by m

% =========== the gradient ============
for j = 1:n, 
	
	% initialize the jth element of grad
	gradient = 0;
	
	for i = 1:m,
		
		% the h(x) for classification 
		hypothesis = sigmoid(X(i,:)*theta);
		
		% incrementation of the jth element of grad
		gradient = gradient + (hypothesis - y(i)) * X(i,:)(j);
		
		end
	% assign each element to the resulting sum of the incrementation
	grad(j) = (1/m) * gradient;

	end	

% =============================================================

end
