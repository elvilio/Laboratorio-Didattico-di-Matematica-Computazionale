%% Parametri
dist = 20;
m = 100;
f = @(x) 1./(x+(1-x).^2);
x = linspace(-2, 2, dist);
y = f(x);
intervalx = linspace(-2, 2, m);

%% Plot
for n = [3,5,8,10]
    p = polyfit(x,y,n);
    plot(intervalx, polyval(p, intervalx));
    hold on;
end

plot(intervalx, f(intervalx), "k--");
% È evidente come si migliori l'approssimazione all'aumentare del grado del
% polinomio.

%%
clear("dist", "f", "g", "intervalx", "m", "n", "p", "x", "y");
