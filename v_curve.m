%{
    Chapter no.6
Synccronous motors
----------------------------
Electric machinery fundamentals
----------------------------------------------
M-file:v_curve.m
M-file create a plot of armature current versus field current for the
synchronous motor of example 6-2.
First, initialize the field current values (21 values in the range
3.8-5.8A)
%}
j=sqrt(-1);
i_f=(38:1:58)/10;
% now initialize all other values
i_a=zeros(1,21); %Pre-allocate i_a array
x_s=2.5;%synchronous reactance
v_phase=280;%Phase voltage
delta1=-17.5*pi/180;%delta 1 in radians
e_al=182*(cos(delta1)+j*sin(delta1));
%calculate the armat  current for each value
for ii=1:21
    %calculate amplitude of e_a2
    e_a2=45.5*i_f(ii);
%     calculate delta2
delta2=asin(abs(e_a1)/abs(e_a2)*sin(delta1));
% calculate the phasor e_a2
e_a2=e_a2*(cos(delta2)+j*sin(delta2));


