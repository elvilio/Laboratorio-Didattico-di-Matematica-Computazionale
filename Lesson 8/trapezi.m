function S = trapezi(f,a, b, N)
    temp = min(a, b);
    b = max(a, b);
    a = temp;
    
    S = sum(f(linspace(a+(b-a)/N, b-(b-a)/N, N-1))) + (f(a)+f(b))/2;
    S = S*(b-a)/N;
end
