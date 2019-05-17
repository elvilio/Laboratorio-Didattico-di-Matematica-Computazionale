%% Impostazioni Schermo figura 1
figure(1);
set(0,'units','pixels');
pixels = get(0,'screensize');
set(gcf, 'Position',  [0,pixels(3),pixels(3)*3/4,3*pixels(4)/4]);

%% Bottoglia di Klein
subplot(2,2,1);
u=linspace(0,2*pi,500);
v=linspace(0,2*pi,500);
[U,V]=meshgrid(u,v);
a = 3;

x=(a+cos(U./2).*sin(V)-sin(U./2).*sin(V.*2))+cos(U);
y=(a+cos(U./2).*sin(V)-sin(U./2).*sin(V.*2))+sin(U);
z=sin(U./2).*sin(V)+cos(U./2).*sin(V.*2);

surf(x,y,z);
axis equal;
shading interp;
title("Bottoglia di Klein");

%% Superficie di Enneper
subplot(2,2,2);
u=linspace(-10,10,500);
v=linspace(-10,10,500);
[U,V]=meshgrid(u,v);

x=(U.^3-3.*U-3.*U.*(V.^2))./4;
y=(3.*V+3.*(U.^2).*V-V.^3)./4;
z=3.*(V.^2-U.^2)./4;

surf(x,y,z);
axis equal;
shading interp;
title("Superficie di Enneper");

%% Ombrello di Whitney
subplot(2,2,3);
u=linspace(-2,2,500);
v=linspace(-2,2,500);
[U,V]=meshgrid(u,v);

x=U.*V;
y=U;
z=V.^2;

surf(x,y,z);
axis equal;
shading interp;
title("Ombrello di Whitney");

%% Superficie di Steiner
subplot(2,2,4);
u=linspace(-20,20,500);
v=linspace(-20,20,500);
[U,V]=meshgrid(u,v);
a=3;

x=a.*(U./(1+U.^2+V.^2));
y=a.*(V./(1+U.^2+V.^2));
z=a.*(V.*U./(1+U.^2+V.^2));

surf(x,y,z);
axis equal;
shading interp;
title("Superficie di Steiner");

%%
clear("pizels", "a", "u", "U", "v", "V", "x", "y", "z");

%% Impostazioni Schermo figura 2
figure(2);
set(0,'units','pixels');
pixels = get(0,'screensize');
set(gcf, 'Position',  [0,pixels(3),pixels(3)*3/4,3*pixels(4)/4]);

%% Superfici di Lissajous
% 1
subplot(2,2,1);
a = 1;
b = 1;
c = 1;
d = 0;

[U,V] = meshgrid(linspace(-pi,pi,500), linspace(-pi,pi,500));

x = sin(U);
y = sin(V);
z = sin(d-a.*U-b.*V)/c;

surf(x,y,z);
axis equal;
shading interp;

% 2
subplot(2,2,2);
a = 2;
b = 1;
c = 4;
d = 2;

[U,V] = meshgrid(linspace(-pi,pi,500), linspace(-pi,pi,500));

x = sin(U);
y = sin(V);
z = sin(d-a.*U-b.*V)/c;

surf(x,y,z);
axis equal;
shading interp;

% 3
subplot(2,1,2);
a = .2;
b = 1;
c = 4;
d = 1;

[U,V] = meshgrid(linspace(-pi,pi,500), linspace(-pi,pi,500));

x = sin(U);
y = sin(V);
z = sin(d-a.*U-b.*V)/c;

surf(x,y,z);
axis equal;
shading interp;

%%
clear("a", "b", "c", "d", "pixels", "U", "V", "x", "y", "z");







