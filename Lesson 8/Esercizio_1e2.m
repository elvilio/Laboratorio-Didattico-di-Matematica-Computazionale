%% Plot Errore
figure(1);
f = @(x) exp(x);

X = [1:10:1001, 2000:1000:10000, 20000:10000:1000000];
Y = [];

for s = X
    Y(end+1) = trapezi(f, 0, 1, s);
end

error = ones(1,length(X)).*(exp(1)-1);
error = abs(error-Y);

loglog(X,error);
hold on;
temp_f = @(x) 1./x.^2;
loglog(X,temp_f(X));
% Si può notare come la pendenza sia uguale.

%%
clear("error", "f", "s", "temp_f", "X", "Y");
