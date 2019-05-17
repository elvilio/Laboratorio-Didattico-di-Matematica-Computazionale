%% Iterazione di Graeffe
t = linspace(-1, 1, 1000);
K = 100;

%% Verifica sperimentale proprietà 1
roots = [1/2, .1, -1/7, 10, -10, 3];
p = poly(roots);

W = graeffe(p,K);

figure(1);
plot(t, polyval(W(K,:), t));
hold on;
plot(t, -polyval([1 zeros(1,sum(abs(roots)<1))], t), "--r");
% il metodo converge a -x^3

%% Verifica sperimentale proprietà 2
roots = [0 1i 0 3];
p = poly(roots);

W = graeffe(p,K);

figure(2);
plot(t, polyval(W(K-1,:), t), "g-");
hold on;
plot(t, polyval([1 zeros(1,sum(abs(roots)<1))], t), "--r");
W(K-2,:)
W(K-1,:)
W(K,:)
% il metodo converge a -x^3+x^2

%%
clear("K", "p", "roots", "s", "t", "W");
