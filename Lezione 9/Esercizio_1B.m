%% Fenomeno dei Battimenti
m=1; h=4; k=0; alpha = 1; u = [0; 1];

f= @(s, omega) alpha .* cos(omega .* s);

omega = [1.5, 1.8, sqrt(h)];

figure('Units', 'normalized', 'Position', [0, 0, 1, 1]);
for iterable = omega
    x = @(t, u) [u(2); (-h*u(1)-k*u(2)+f(t, iterable))/m];
    [t, y] = ode45(x, [0, 60], u);
    subplot(length(omega),1,find(omega == iterable));
    plot(t, y(:,1), "b", t, f(t, iterable), "r-.");
    legend("Posizione", "$$f(t)$$", "interpreter", "latex")
end

% Si può osservare come la forza si allinea con l'oscillazione, cioè h,
% la velocità della particella aumenta perchè non contrastata dalla forza.
%%
clear("alpha", "f", "h", "k", "m", "omega", "t", "u", "x", "y", "iterable");
