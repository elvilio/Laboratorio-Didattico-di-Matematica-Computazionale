function S=levy(m)
    f1 = @(z) ((1-1i).*z)/2;
    f2 = @(z) 1 +((1+1i).*(z-1))/2;
    S = ones(m,1);
    for k = 1:m-1
        if (rand()<.5)
            S(k+1) = f1(S(k));
        else
            S(k+1) = f2(S(k));
        end
    end
end
