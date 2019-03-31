function Z = julia(a, b, c, d, s, K, meshsize)

if ~exist('meshsize', 'var')
    meshsize = 200;
end

x = linspace(a,b,meshsize)';
y = linspace(c,d,meshsize)';
Z = zeros(size(x,1),size(y,1));

for h=1:length(x)
    % assegno l'intera riga al vettore risultante perchè più veloce
    Z(h,:) = julia_i(x+1i*y(h),s,K);
end
end

