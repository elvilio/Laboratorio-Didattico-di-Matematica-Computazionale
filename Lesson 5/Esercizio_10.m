figure(1);
t=0:0.01:2*pi;
x=sin(t);
y=sin(2.*t);
z=sin(3.*t);

plot3(x,y,z,"r");

clear("t", "x", "y", "z");