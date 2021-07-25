function sim = gaussianKernel(x1, x2, sigma)
%RBFKERNEL returns a radial basis function kernel between x1 and x2
%   sim = gaussianKernel(x1, x2) returns a gaussian kernel between x1 and x2
%   and returns the value in sim

% Ensure that x1 and x2 are column vectors
x1 = x1(:); x2 = x2(:); % this are for converting matrices to column matrix

% You need to return the following variables correctly.
sim = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the similarity between x1
%               and x2 computed using a Gaussian kernel with bandwidth
%               sigma
%
%

differenc = x1 - x2;
sq_Diff = differenc.^2;
sim = exp(-sum(sq_Diff)/(2*sigma*sigma)); %-sum_of_squared_diff / 2_sigma_square

% =============================================================
    
end
