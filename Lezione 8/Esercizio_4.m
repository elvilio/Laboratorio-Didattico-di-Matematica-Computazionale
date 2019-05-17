%% Plot della funzione integral
f_x = @(x) cos(x.^2);
f_y = @(x) sin(x.^2);
M=1000;
interval = linspace(-4*pi, 4*pi, M);

q_x = []; q_y = [];

for s = interval
    q_x(end+1) = integral(f_x, 0, s);
    q_y(end+1) = integral(f_y, 0, s);
end

subplot(1, 2, 1);
plot(interval, q_x);
hold on;
plot(interval, q_y);
title("Funzioni $$x(t)$$ e $$y(t)$$", "interpreter", "latex");
legend("$x(t)=\int_{0}^{t}{cos(x^2)dx}$",...
    "$y(t)=\int_{0}^{t}{sin(x^2)dx}$", "interpreter", "latex");

subplot(1, 2, 2);
plot(q_x,q_y);
title("Plot $$\{x(t), y(t)\}$$", "interpreter", "latex");

%%
clear("f_x", "f_y", "interval", "M", "q_x", "q_y", "s");
