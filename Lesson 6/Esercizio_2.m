%% Plot dei primi 6 polinomi di Legendre
figure(1);
S = legendre(6);

%% Plot del sesto polinomio di Legendre tramite formula differenziale
n = 6;
syms x
f(x) = (x^2-1)^n;
dfn = diff(f, x, n);
dfn = 1/((2^n).*factorial(n)).*dfn;

var_vec = double(dfn(linspace(-1,1,500)));

figure(2);
plot(var_vec, "r", 'LineWidth', 2);
hold on;
plot(S, "k--", 'LineWidth', 2);
% e

clear("s", "dfn", "f", "n", "S", "var_vec", "x");