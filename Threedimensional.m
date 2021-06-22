% Three-dimensional plots are drawn using the functions mesh and meshdom
% (mesh domain). For example, to draw the graph of z=x*exp(-x^2-y^2) over the domain 
% -1<x, y<1, we type the following commands:
xx=-1:.1:1;
yy=xx;
[x,y]=meshgrid(xx,yy);
z=x.*exp(-x.^2-y.^2);
mesh(z);
