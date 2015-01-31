function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%


% find the indices corresponding to positive examples
pos = find(y == 1); % store in vector pos.

% find the indices corresponding to negative examples
neg = find(y == 0); % store in vector neg.

% plot positive examples with a "+" and negative with a "o".
plot(X(pos, 1), X(pos, 2), 'k+', 'LineWidth', 2, 'MarkerSize', 7)
plot(X(neg, 1), X(neg, 2), 'ko', 'LineWidth', 2, 'MarkerFaceColor', 'y', 'MarkerSize', 7);

xlabel('Exam score 1'); % set label on x-axis.
ylabel('Exam score 2'); % set label on y-axis.








% =========================================================================



hold off;

end
