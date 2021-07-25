% matrix multiplication
A = [1,1; 2,2]
B = [3,3; 4,4]

A*B %matrix multiplication
A.*B %corresponding element wise multiplication

A.^2 %element wise exponent

1./A %element wise reciprocal

log(A) %element wise logarithm
exp(A) %element wise exponent
abs(A) %to find the absolute values for elements of A

-A %equivalent to -1 * A


%to add 1 to all elements of a vector
v = [1;2;3]
v + ones(length(v),1) %one way
v+1 %element wise addition, the other way



% transpose of a matrix
A'
(A')'

% finding max element and its index
[val, idx] = max(v)

[row, col] = find(A >= 1) %returns the row and col indexes of all elements satisfying the condition


% element wise comparison
v >= 2 %1 for true; 0 for false
find(v >=2) % elements which satisfies this condition

% magic matrix: each row, each column and each diagonal sum up to same number
magic(4)


% aggregate function
B = [1,2,3; 4,5,6]
sum(B) %adds all element of A; row wise; prints answer column wise
prod(B)
floor(B)
ceil(B)

% row wise max
max(B, [], 1)

%column wise max
max(B, [], 2)

%to find the maximum element of a matrix
max(max(B))
max(B(:))



% to find the alternate diagonal
flipud(eye(5))

% finding inverse of a matrix
m = magic(4)
pinv(m)


