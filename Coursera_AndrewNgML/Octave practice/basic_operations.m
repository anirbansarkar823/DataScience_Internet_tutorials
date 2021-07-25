%any documentation
help help
help eye


% to check variables present in octave memory
who
whos %detailed memory description


% clearing variable space
clear %to clear all variables
clear a %to clear a from memory


% saving a variable to a file - in binary format
% save filename.extension var_name;
% save filename.extension var_name -ascii; %saves file as text


%operation 1
5+6

%operation 2
4/2

%operation 3
3/2

%operation multiplication
5*2

% exponent operation
2^6


%this is comment
1 == 2 %comment

% != operation in octave
1 ~= 2

%logical operation
1 && 1

3 || 0


xor(1,0) %XOR operation

a=1
st = 'hello string';
st = 'hello string without semi-colon';
disp(a)


%formating string input
a = pi;
disp(a)
disp(sprintf('3 decimal: %0.3f', a));



%defining matrix
A = [1, 2; 3,4; 5,6];
disp(A)
B = [1 2; 3 4; 5 6];
disp(B)

disp(A(3,2)) %3rd row 2nd column's element
disp(A(3,:)) % : means every element along that row/column
disp(A([1,3],:); % all columns from 1st and 3rd row


%putting all elements of A into a single column vector
a = A(:);
% IN OCTAVE INDEXING STARTS FROM 1

% range in octave
disp(1:0.1:2) #start: steps: end
disp(1:3) #start: end -- inclusive of end 

% special matrices
ones(3,3) %matrix of 1s
zeros(3,3) %matrix of 0s
eye(4) %identity matrix

% matrix of random numbers (uniformly distributed numbers)
rand(3,3)

% matrix of normally/gaussian distributed random numbers
randn(3,3)


% plotting
% **[IMPORTANT] --  graphics_toolkit('gnuplot')
% changing graphics_toolkit from 'qt' to 'gnuplot' to avoid hanging/stucking problem
w = -6 + sqrt(10)*(randn(1,10000));
hist(w)