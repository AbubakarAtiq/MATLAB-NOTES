% A=[3 -2 -1; -4 7 -1; 2 -3 1];
% B=[12 0 0]';
%AV=B
% V=inv(A)*B;
%{
We have this equation,
RI=V
we have to find I in all mesh
so,
Chapter 3 Method of Analysis
Example 3.9
Page no.103
By inspection, write the mesh-current equations for the circuit in Fig.3.29
We have five meshes, so the resistance matrix is 5 by 5. The diagonal
terms, in ohms, are:
%} 
R=[9 -2 -2 0 0; -2 10 -4 -1 -1; -2 -4 9 0 0; 0 -1 0 8 -3; 0 -1 0 -3 4];
V=[4; 6; -6; 0; -6];
% I=inv(R)*V;
I=inv(R)*V;