% for loop
vec = zeros(10,1) %from a 10X10 0s matrix, choose the first column

%indendation is not necessary; indexing starts from 1
for i=1:10,
  vec(i) = 2^i;
end;

disp(vec);


% similar way to write
indices = 1:10; %1 to 10 in steps to 1, [1,10]
for i=indices,
  disp(i);
end;



%% while loop
i=1;
while i <= 8,
  vec(i) = 100;
  i = i+1;
end;
vec



% if statement
i=5;
while true,
  vec(i) = 987;
  i = i+1;
  
  %if-statement
  if i == length(vec) + 1,
    break; %use of break statement 
  end;
end;
disp(vec);



% if..elseif..else..end
a = 10;
if a<10,
  disp("a less than 10");
elseif a>10,
  disp("a greater than 10");
else
  disp("a is 10");
end;



% function call
squareThisNumber(200)

%function with 2 return values
[sq,cu]=squareAndCubeNumber(300)



% example of utilizing funtion to calculate cost function
X = [1 1; 1 2; 1 3]; %training data; only 1 feature; first column is 1 for theta_zero
y = [1; 2; 3]; %vector

theta = [0;1]; %vector for multiplication with X
% theta_zero = 0
%theta_one = 1

j = costFunctionJ(X,y,theta);
