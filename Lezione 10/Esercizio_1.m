%%
resolution = 1001;

f = @(x) x.^2 + 1;
interval = [-1,1];

[pos, value] = forzabruta(f, interval, resolution);

fprintf("The min value %f was found at position %f\n", value, pos(1));


f = @(x) 1./x .* sin(1./x);
interval = [.08, 3];
[pos, value] = forzabruta(f, interval, resolution);

fprintf("The min value %f was found at position %f\n", value, pos(1));


[pos, value,~,OUTPUT] = fminbnd(f, .08, 3);
fprintf("The function 'fminbnd' found local minimum %f at position %f\n", value, pos);
fprintf("after %d iterations and %d number of function evaluations\n", ...
        OUTPUT.iterations, OUTPUT.funcCount);
% Dato che fmindbn cerca un minimo locale, i due risultati non sono
% comparabili.

%%
clear("f", "interval", "OUTPUT", "pos", "resolution", "value");
