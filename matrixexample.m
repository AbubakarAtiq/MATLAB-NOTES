%{
    Chapter no 3 Methods of Analysis
Page no.88
Method 3 We now use MATLAB to solve the matrix. Equation (3.2.6) can be
written as
AV=B            V=A^-1*B
where A is the 3 by 3 square matrix, B is the column vector, and V is a
column vector comprised of v_1, v_2, and v_3 that we want to determine.
We use MATLAB to determine V as follows:
%}
% A=[3 -2 -1; -4 7 -1; 2 -3 1];
% B=[12 0 0]';
% V=inv(A)*B;