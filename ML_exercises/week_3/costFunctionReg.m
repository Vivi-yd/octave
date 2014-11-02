function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

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

% ========================= computing cost ===========================
% initialize cost
cost = 0

% iterate from 1 to m
for i = 1:m,
	% the h(x) for classification 
	hypothesis = sigmoid(X(i,:)*theta);
	
	% incrementing the cost
	cost = cost + ((-1)* y(i) * log(hypothesis)) - (1-y(i)) * log(1 - hypothesis);
	
	end



J = (1/m) * cost; % divide the cost by m

n = size(theta); % the dimensions of theta

sq_para = 0; % initialize the squared parameters

for j = 2:n,
	
	sq_para += (theta(j))^2;
	
	end
	
reg_factor = (lambda/(2*m)) * sq_para; % computing the regularized parameters


J += reg_factor; % adding the regularized parameters factors to the cost J


% ========================= computing gradient ======================

grad_zero = 0

for i = 1:m,		
	
	% the h(x) for classification 
	hypothesis = sigmoid(X(i,:)*theta);
		
	% incrementation of the of grad when j = 1
	grad_zero = grad_zero + (hypothesis - y(i)) * X(i,:)(1);
	
	end
grad(1) = (1/m)* grad_zero

for j = 2:n, 
	
	% initialize the jth element of grad
	gradient = 0;
	
	for i = 1:m,
		
		% the h(x) for classification 
		hypothesis = sigmoid(X(i,:)*theta);
		
		% incrementation of the jth element of grad
		gradient = gradient + (hypothesis - y(i)) * X(i,:)(j);
		
		end
	% assign each element to the resulting sum of the incrementation
	grad(j) = ((1/m) * gradient) + (lambda/m)*theta(j);

	end	


% =============================================================

end
