function S = graeffe(p,K)
    S = ones(K+1, length(p));
    S(1,:) = p;    
    for s = 2:K+1
        r = conv(S(s-1,:),S(s-1,:).*((-1).^[length(p)-1:-1:0]));
        r = r./max(abs(r));
        S(s,:) = r(1:2:end);
    end
end

