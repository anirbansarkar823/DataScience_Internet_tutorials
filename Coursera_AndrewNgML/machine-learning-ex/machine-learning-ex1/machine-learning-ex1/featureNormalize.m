function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2)); 
sigma = zeros(1, size(X, 2));

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%       
mu = mean(X); % will calculate mean column wise; mean for each feature
% dimension of mu: (1 X size(X,2))

sigma = std(X); % will calculate standard deviation column wise; std for each feature
% dimension of sigma: (1 X size(X,2))

numerator = (X - mu); % X-(m, size(X,2); mu- (1, size(X,2); row by row subtraction
X_norm = numerator ./ sigma; % X-(m, size(X,2); sigma- (1, size(X,2); row by row element wise division

% ============================================================

end
