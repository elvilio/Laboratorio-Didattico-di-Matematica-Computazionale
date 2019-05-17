function W = mandel (a, b, c, d, K, p, meshsize)

if ~exist('meshsize', 'var')
    meshsize = 200;
end
if ~exist('p', 'var')
    p = 2;
end

x = linspace(a,b,meshsize)';
y = linspace(c,d,meshsize)';
W = zeros(size(x,1),size(y,1));

for h=1:length(x)
    % assegno l'intera riga al vettore risultante perchè più veloce
    W(h,:) = mandel_i(x+1i*y(h), K, p);
end

end
