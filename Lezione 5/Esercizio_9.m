%% Folium di Cartesio
f = @(x,y) x.^3 + y.^3 - 3.*x.*y;
[X,Y] = meshgrid(-3:.005:3,-3:.005:3);
contour(X,Y,f(X,Y), [0;0]);

%%
clear("f","X","Y");
