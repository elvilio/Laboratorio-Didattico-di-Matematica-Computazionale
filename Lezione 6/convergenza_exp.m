function err = convergenza_exp(A,k)
    if size(A, 1) ~= size(A, 2)
        error('A non è una matrice quadrata');
    end
    
    err = [];
    pm = @(M, s) M^s./factorial(s);
    var_var = diag(ones(1,length(A)));
    
    for s=1:k
        var_var = pm(A, s) + var_var;
        err(end+1) = norm(expm(A)-var_var);
    end
end
