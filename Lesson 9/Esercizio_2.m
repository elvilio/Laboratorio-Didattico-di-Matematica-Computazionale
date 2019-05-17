%% Attrattore di Lorenz
sigma = 10; r = 28; b = 8/3; interval=[0,10];

f = @(t, u) [sigma.*(u(2)-u(1));r.*u(1)-u(2)-u(1).*u(3);u(1).*u(2)-b.* u(3)];

options = odeset('RelTol',1e-5);

u = [10; 0; 20];
[t1, y1] = ode45(f, interval, u, options);
u = [11; 0; 20];
[t2, y2] = ode45(f, interval, u, options);

figure('Units', 'normalized', 'Position', [0, 0, 1, 1]);
for s=1:3
    subplot(3, 2, (s-1)*2+1);
    plot(t1, y1(:,s), "b", t2, y2(:,s), "r");
    grid on;
    grid minor;
    titolo = strcat("Componente $$x_", int2str(s), "$$");
    title(titolo, "interpreter", "latex");
end

subplot(12,2,2:2:21)
plot3(y1(:,1),y1(:,2),y1(:,3));
hold on;
plot3(y2(:,1),y2(:,2),y2(:,3), "r");

hL = subplot(12,2,24);
plot(1, nan, 1, nan, 'r');
set(hL, 'Visible', 'off');
poshL = get(hL,'position');
lgd = legend("$$x_1(0) = 10, x_2(0) = 0, x_3(0) = 20$$", ...
        "$$x_1(0) = 11, x_2(0) = 0, x_3(0) = 20$$", ...
        "interpreter", "latex");
set(lgd,'position',poshL);

% Si può notare che per tempi superiori a 2 non c'è più correlazione fra le
% due curve.

%%
clear("b", "f", "hL", "interval", "lgd", "poshL", "r", "s", "sigma", "t1", "t2", "titolo", "u", "y1", "y2");
