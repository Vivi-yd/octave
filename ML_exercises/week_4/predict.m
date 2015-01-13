function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%

% ====================== forward propagation neural network model - Vivi =========================

% add bias unit to matrix X (input layer), making it a 5000x401 matrix
a1 = [ones(m, 1), X];

z2 = a1*Theta1'; % result to 5000x25 matrix

% compute activation of layer two and then add bias unit (hidden layer).
a2 = [ones(m, 1), sigmoid(z2)]; % result in 5000x26 matrix

z3 = a2 * Theta2'; % gives a 5000x10 matrix

% compute the output layer
a3 = sigmoid(z3);

% find the max (of the 10 elements) of each row to return the label
% that most likely to be correct and store in vector p 
[prob_val, p] = max(a3, [], 2);


% by Vivi =========================================================================


end
