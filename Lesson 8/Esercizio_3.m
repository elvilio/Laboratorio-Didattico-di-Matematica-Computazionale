%% Plot Errore
figure(1);
f = @(x) exp(x);

X = [10:10:1000, 2000:1000:10000, 20000:10000:1000000];
Y = [];

for s = X
    Y(end+1) = simpson(f, 0, 1, s);
end

error = ones(1,length(X)).*(exp(1)-1);
error = abs(error-Y);

loglog(X,error);
hold on;
f = @(x) (x.^4)./180;
loglog(X, f(1./X));
% Si può notare come, essendo la precisione di macchina 10^-16, l'errore
% non abbia più significato e non si possa approssimare meglio la funzione.
% Tuttavia si comporta come una funzione di quarto grado rispetto a 1/N
% fino a circa N=1000;

%%
clear("error", "f", "s", "X", "Y");
