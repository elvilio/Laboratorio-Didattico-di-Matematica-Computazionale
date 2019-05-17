figure(1);
f = @(x,y) x.^2 + 2*x.*y + y.^2 -2.*x;
[X,Y] = meshgrid(-3:.1:5,-5:.1:3);
contour(X,Y,f(X,Y), [3;3]);

%%
clear("f","X","Y");
