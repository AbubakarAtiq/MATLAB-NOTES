%{
M-file: term_char_a.m
M-file to plot the terminal characteristices of the generator of example
5-4 with an 0.8pf lagging load.
first, initialize the current amplitude (21 values in the range 0-60A)
%}
i_a=(0:1:20)*3;
%Now initialize all other values
v_phase=zeros(1,21);
e_a=277.0;
x_s=1.0;
theta=36.87*(pi/180);%converted to radians
%now calculate v_phase for each current level
for ii=1:21
    v_phase(ii)=sqrt(e_a^2-(x_s*i_a(ii)*cos(theta))^2)-(x_s*i_a(ii)*sin(theta));
end
%calculate terminal voltage from the phase voltage
v_t=v_phase*sqrt(3);
%{
Plot the terminal characteristic, remembering the line current is the same
as i_a
%}
plot(i_a,v_t,'Color','k','Linewidth',2.0);
xlabel('Line current (A)','Fontweight','Bold');
ylabel('Terminal characteristic for 0.8 PF lagging load','Fontweight','Bold');
title('Electric Machinery Fundamental');
grind on;
axis([0 60 400 550]);