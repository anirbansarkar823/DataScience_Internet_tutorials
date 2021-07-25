function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %
    h_thetaX = X * theta; % X-(m, n_features+1); theta-(n_features+1,1); h_theraX-(m,1)
    error = h_thetaX - y; % error-(m,1)
    newX = error' * X; % error'-(1, m); X-(m, n_features+1); newX - (1, n_features +1); sum of product of all m datapoints for each feature
    theta = theta - ((alpha/m) * newX'); % newX' = (n_features+1, 1); theta-(n_features+1,1)
    










    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);

end

end
