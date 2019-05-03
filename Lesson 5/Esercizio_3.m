figure(1);
t=-5:0.01:5;
x=4.*cos(2*t);
y=4.*sin(2*t);
z=t;

plot3(x,y,z,"r");

clear("t", "x", "y", "z");