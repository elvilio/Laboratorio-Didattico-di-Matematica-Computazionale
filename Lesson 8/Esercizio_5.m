%% Plot funzioni periodiche
figure(1);

f = @(x) exp(cos(x));
M = 1000;
interval = linspace(0,2*pi,M);

I = integral(f, 0, 2*pi);

error1 = []; error2 = [];
N = 2:10;
for s=N
    error1(end+1) = trapezi(f, 0, 2*pi, s);
    error2(end+1) = simpson(f, 0, 2*pi, s);
end
error1 = abs(error1-I);
error2 = abs(error2-I);

subplot(2, 2, 1);
plot(interval, f(interval));
title("Funzione $$f=e^{cos(x)}$$", "interpreter", "latex");

subplot(2, 2, [2,4]);
semilogy(N, error1);
title("Errore del Metodo dei Trapezi", "interpreter", "latex");

subplot(2, 2, 3);
semilogy(N, error2);
title("Errore del Metodo dei Simpson", "interpreter", "latex");
% Si può notare come l'approssimazione tramite il metodo dei trapezi sia
% migliore di quella di Simpson per questa funzione.

%%
clear("f", "M", "interval", "I", "error1", "error2", "N", "s");
