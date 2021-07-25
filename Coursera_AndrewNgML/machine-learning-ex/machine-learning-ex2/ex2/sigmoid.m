function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).

% here z = X * theta
g = 1./(1 + exp(-1*z));
% Element wise division 1./
% exp: will work on element wise whole matrix
% -1 * z: will multiply -1 with whole matrix element-wise



% =============================================================

end
