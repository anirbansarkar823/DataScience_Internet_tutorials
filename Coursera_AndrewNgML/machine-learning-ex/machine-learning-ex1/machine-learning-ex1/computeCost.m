function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.


h_thetaX = X * theta % X-(m,2); theta-(2,1); h_theraX-(m,1)
error = h_thetaX - y;  % X-(m,2); theta-(2,1); error-(m,1)
J = (1 / (2*m) ) * sum((error).^2)
% X is of dimension (m X 2); one column for 1, one column for X
% theta: of dimension (2 X 1); 
% y: of dimension (m X 1)
% .^2 : element wise power 2 (difference to the power 2)



% =========================================================================

end
