%For example, y=10*sin(2*pi*x) from 0 to 5*pi
%x is a vector, 0<=x<=5*pi, increments od pi/100
%creates a vector y
%creates the plot
x=0:pi/100:5*pi;
y=10*sin(2*pi*x);
plot(x,y,'-.')
% Various color and line types 
% y     Yellow      .       Point
% m     Magnetia    o       Circle
% c     Cyan        x       x mark
% r     Red         +       Plus
% g     Green       -       Solid
% b     Blue        *       Star
%w      White       -.      Dashdot      
%k      Black       --      Dashed
% Just the change the '-.' section, and see the result by yourself.