%% Parametri
dist = 20;
m = 100;
f = @(x) 1./(x+(1-x).^2);
x = linspace(-2, 2, dist);
y = f(x);
intervalx = linspace(-2, 2, m);

eval1 = polyval(polyfit(x,y,5), intervalx);
eval2 = interp1(x,y,intervalx,"linear");
eval3 = interp1(x,y,intervalx,"spline");
eval4 = lagrange(x, y, intervalx);

%% Plot
figure(1);
subplot(2, 1, 1);
plot(intervalx, f(intervalx), "k--");
hold on;
plot(intervalx, eval1);
plot(intervalx, eval2);
plot(intervalx, eval3);
plot(intervalx, eval4);

%% Plot Errori
subplot(2, 1, 2);
semilogy(intervalx, abs(f(intervalx)-eval1));
hold on;
semilogy(intervalx, abs(f(intervalx)-eval2));
semilogy(intervalx, abs(f(intervalx)-eval3));
semilogy(intervalx, abs(f(intervalx)-eval4));

%%
clear("dist", "eval1", "eval2", "eval3", "eval4", "f", "intervalx", "m", "x", "y");
