%M-file:ex1_10.m
%M-file to calculate and plot the velocity of 
%a linear motor as a function of load.
VB=120; %Battery voltage (V)
r=0.3;  %Resistance (Ohms)
l=1;    %Bar length (m)
B=0.6;  %Flux density (T)
%Select the forces to apply to the br
F=0:10:50;  %force (N)
%calculate the currents flowing in the motor.
i=F./(l*B); %current (A)
%calculate the induced voltages on the bar.
eind=VB-i.*r;   %Induced voltage (V)
%calculate the velocities of the bar.
v_bar=eind./(l*B);  %velocity (m/s)
%Plot the velocity of the bar versus force.
plot(F,v_bar);
title('Plot of velocity versus Applied Force');
xlabel('Force (N)');
ylabel('Velocity (m/s)');
axis([0 50 0 200]);