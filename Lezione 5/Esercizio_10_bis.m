numPoints = 1000;

t=linspace(0,2*pi,numPoints);
x=sin(t);
y=sin(2.*t);
z=sin(3.*t);

figure(1);
view(3);
figure('DoubleBuffer','on');
plot3(x,y,z, 'LineWidth',2), grid on;
axis tight manual;

ax = gca;
ax.NextPlot = 'replaceChildren';
F(length(t)) = struct('cdata',[],'colormap',[]);

for j = 1:length(t)
    hold off;
    plot3(sin(t(j)), sin(2*t(j)), sin(3*t(j)), "b*");
    hold on;
    plot3(x,y,z, "r-");
    drawnow
    F(j) = getframe(ax);
end

movie(F,3);

%%
clear("ax", "F", "j", "numPoints", "t", "x", "y", "z");
