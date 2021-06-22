% x is a vector, 0<=x<=5*pi, increments of pi/100
% creates a vector y
% label the x axis
% label the y axis
% title the plot
% addgrid
x=0:pi/100:5*pi;
y=10*sin(2*pi*x);
plot(x,y,'--')
xlabel('x (in radians)');
ylabel('10*sin(2*pi*x)');
title('ARafiullah function');
grid