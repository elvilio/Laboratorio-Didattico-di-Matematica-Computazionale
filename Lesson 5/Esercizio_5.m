%% Sfera
r=linspace(-pi,pi,400);
t=linspace(0,2*pi,400);
[R,T]=meshgrid(r,t);
x=cos(T).*sin(R);
y=sin(T).*sin(R);
z=cos(R);

mesh(x,y,z);
axis equal;
title("Sfera");

clear("r", "R", "t", "T", "x", "y", "z");