function [x, y, iter] = bsegno(a, b, c, d, maxiter, epsilon, meshsize)
    % se il valore "meshsize" non viene inserito, viene creato e assegnato il
    % valore default di 200
    if ~exist('meshsize', 'var')
        meshsize = 200;
    end

    x = linspace(a,b,meshsize)';
    y = linspace(c,d,meshsize)';
    iter = zeros(size(x,1),size(y,1));

    % risulta più veloce 2 cicli "for" che 1 solo ciclo "for" sull'intero
    % vettore riga/colonna
    for h=1:size(x,1)
        for k=1:size(y,1)
           iter(h,k) = segno(x(h)+1i*y(k),maxiter,epsilon);
        end
    end
end

