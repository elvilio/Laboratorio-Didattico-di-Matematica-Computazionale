%% Oscillatore Armonico

CHOICE = menu("Scegliere il grafico desiderato:", "Oscillatore libero non smorzato", ...
                        "Oscillatore libero sottosmorzato", ...
                        "Oscillatore libero sovrasmorzato", ...
                        "Oscillatore forzato smorzato");
switch CHOICE
    case {1}
        m=1;h=10;k=0;f=0;
        u = [1, 0];
        titolo = "Oscillatore libero non smorzato";
    case {2}
        m=1;h=10;k=.5;f=0;
        u = [1, 0];
        titolo = "Oscillatore libero sottosmorzato";
    case {3}
        m=1;h=10;k=10;f=0;
        u = [1, 0];
        titolo = "Oscillatore libero sovrasmorzato";
    case {4}
        m=2;h=10;k=0.75;f=25;
        u = [2, 0];
        titolo = "Oscillatore forzato smorzato";
    otherwise
        disp('Error.');
end
x = @(t, u) [u(2); (-h*u(1)-k*u(2)+f)/m];

[t, y] = ode45(x, [0, 60], u);
figure('Units', 'normalized', 'Position', [0, 0, 1, 1]);
plot(t, y(:,1), "r-", t, y(:,2), "k-.");
legend("Posizione", "Velocità");
title(titolo);


%%
clear("CHOICE", "f", "h", "k", "m", "t", "titolo", "u", "x", "y");
