x=linspace(-2,2,100);
y=linspace(-2,2,100);
[X,Y] = meshgrid(x,y);
f = @(x,y) abs(1./(1-(x+i.*y).^10));

surf(X,Y,f(X,Y));
shading interp;

clear("x", "y", "X", "Y", "f", "z");