%% Parametri
m=400;

f=@(x) 1./(1+25.*(x.^2));
interpx=linspace(-1,1,m);

%% Plot
figure(1);
subplot(2, 1, 1);
plot(interpx, feval(f, interpx),'DisplayName', 'Originale');
hold on;
for s = 3:3:15
    x = linspace(-1,1,s);
    y = feval(f, x);
    plot(interpx, lagrange(x, y, interpx), 'DisplayName', ['Nodi: ' num2str(s)]);
end
legend(gca,'show');

%% Plot Errori
subplot(2, 1, 2);
for s = 3:3:15
    x = linspace(-1,1,s);
    y = feval(f, x);
    semilogy(interpx, abs(feval(f, interpx)-lagrange(x, y, interpx)), 'DisplayName', ['Nodi: ' num2str(s)]);
    hold on;
end
legend(gca,'show');

% Aumentando il numero di nodi, aumenta l'errore, soprattutto sul bordo
% dell'intervallo.

%%
clear("f", "interpx", "m", "s", "x", "y");