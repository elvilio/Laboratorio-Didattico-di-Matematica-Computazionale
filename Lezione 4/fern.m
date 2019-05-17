function value_r = fern(m)
    rng('default'); % per risultati più consistenti
    initial_point = [.5,.5];
    
    A(:,:,1) = [.85 .04;-.04 .85];
    A(:,:,2) = [.2 -.26;.23 .22];
    A(:,:,3) = [-.15 .28;.26 .24];
    A(:,:,4) = [0 0;0 .16];

    b(:,1) = [0;1.6];
    b(:,2) = [0;1.6];
    b(:,3) = [0;.44];
    b(:,4) = [0;0];
    
    p = [.85 .92 .99 1];
    p_lower = [0 p(1:3)];
    % usato per vedere in quale intervallo cade il numero randomico generato
    
    f = @(A, b, x) A*x'+b;
    
    value_r = ones(m,2).*initial_point;
    for k=1:m-1
        rand_value = rand()*ones(1,4);
        mask = rand_value<p & rand_value>p_lower;
        % usata per discernere quale matrice e quale vettore usare
        value_r(k+1,:) = f(A(:,:,mask),b(:,mask),value_r(k,:));
    end
end

