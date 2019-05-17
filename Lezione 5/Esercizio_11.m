%% Striscia di Möbius

u=linspace(0,2*pi,1000);
v=linspace(-.4,.4,1000);

[U,V]=meshgrid(u,v);

x=cos(U)+V.*cos(U./2).*cos(U);
y=sin(U)+V.*cos(U./2).*sin(U);
z=V.*sin(U./2);

light('position',[-1 0 1]);
light('position',[-1.5 0.5 -0.5], 'color', [.6 .2 .2]);
view(3);


surface(x,y,z);
material metal;
axis equal;
shading interp;

%%
clear("x", "y", "z", "u", "v", "U", "V");
