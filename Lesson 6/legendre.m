function S = legendre(K)
    K=K+1;
    if (K<3)
        error('K non è abbastanza grande');
    end
    X = linspace(-1,1,500);
    X = X(:);

    Y = zeros(numel(X),K);
    Y(:,1) = 1;
    Y(:,2) = X;
    for n=1:(K-1)
        Y(:,n+2) = ((2*n+1) .* X .* Y(:,n+1) - n .* Y(:,n)) / (n+1);
    end
    plot(X,Y(:,1:K));
    S = Y(:,K);
end
