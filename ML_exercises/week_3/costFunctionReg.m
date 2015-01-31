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


% ===================== Logistic Regression Cost (Regularized) ===========================

% compute the output from the Logistic Regression hypothesis
hyp = sigmoid(X*theta);

% compute the cost of Logistic Regression as per the Cost Function.
cost = -y' * log(hyp) - (1-y)'*log(1-hyp);
J = cost/m;

%add the regularization factor
J = J + lambda/(2*m) * sum(theta(2:end).^2);


% =============== Logistic Regression Gradient (regularized) ===================================

grad(1) = (1/m)* (X(:,1)'*(hyp - y)); % grad that correspond to first feature is not regularized

grad(2:end) = (1/m)* (X(:, 2:end)'*(hyp - y)) + (lambda/m)* theta(2:end);

% =============================================================

end
