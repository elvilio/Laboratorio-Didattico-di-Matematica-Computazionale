%% Parametri
n=11;
m=100;

x=5*cos(linspace(0, pi, n));
f=@(t) 1./(1+t.^2);
y=feval(f,x);
interpx=linspace(-5,5,m);

%% Plot Errori
figure(1);
subplot(2, 1, 1);
semilogy(interpx, abs(f(interpx)-interp1(x,y,interpx,"linear")), "r-");
hold on;
semilogy(interpx, abs(f(interpx)-interp1(x,y,interpx,"spline")), "g-");
semilogy(interpx, abs(f(interpx)-interp1(x,y,interpx,"pchip")), "b-");

y1=get(gca,'ylim');
for s=1:length(x)
    plot([x(s), x(s)], y1, "k-", "LineWidth", .01);
end
% Si può osservare come nei punti che vengono dati l'errore è 0 ma in anche
% altri punti è molto vicino a 0 perchè passa da sopra la funzione f a
% sotto e quindi la interseca.

%% Plot Errore Lagrange
subplot(2, 1, 2);
semilogy(interpx,abs(f(interpx)-lagrange(x,y,interpx)));

hold on;
y1=get(gca,'ylim');
for s=1:length(x)
    plot([x(s), x(s)], y1, "k-", "LineWidth", .01);
end
%%
clear("f", "interpx", "m", "n", "s", "x", "y", "y1");
