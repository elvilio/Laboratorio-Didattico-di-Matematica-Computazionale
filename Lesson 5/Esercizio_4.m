%% Impostazioni Schermo
figure(1);
set(0,'units','pixels');
pixels = get(0,'screensize');
set(gcf, 'Position',  [0,pixels(3),pixels(3)*3/4,pixels(4)/2]);

%% a.
subplot(1,3,1);
t=0:0.01:4*pi;
x=(2+cos(1.5.*t)).*cos(t);
y=(2+cos(1.5.*t)).*sin(t);
z=2.*sin(1.5.*t);
plot3(x,y,z,"r");
axis equal;

%% b.
subplot(1,3,2);
t=0:0.01:2*pi;
x=(4+sin(20.*t)).*cos(t);
y=(4+sin(20.*t)).*sin(t);
z=cos(20.*t);
axis square;
plot3(x,y,z,"b");
axis equal;

%% c.
subplot(1,3,3);
t=-2:0.01:2;
x=t;
y=t.^2;
z=t.^3;
axis square;
plot3(x,y,z,"g");
axis equal;

%%
clear("t", "x", "y", "z", "pixels");