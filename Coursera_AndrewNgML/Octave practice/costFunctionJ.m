% function to calculate cost funtion

function J = costFunctionJ(X,y,theta) %function definition
  % J is the return value
  % X is the training set
  % y is the target value
  
  m = size(X,1); % number of training examples; number of rows
  predictions = X * theta; % predictions of hypothesis on all m training examples
  % predictions = (theta_zero * 1 + theta_one * X)
  sqrErrors = (predictions-y).^2; %squared errors
  
  J = 1/(2*m) * sum(sqrErrors);
  