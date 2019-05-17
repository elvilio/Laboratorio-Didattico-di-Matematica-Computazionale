function S=simpson(f,a,b,N)
    if(mod(N,2)==1)
        N=N+1;
    end
    temp = min(a, b);
    b = max(a, b);
    a = temp;
    
    h = (b-a)/N;
    
    S = h/3*(f(a)+f(b) ...
        + 2*sum(f(linspace(a+2*h, b-2*h, N/2-1))) ...
        + 4*sum(f(linspace(a+h, b-h, N/2))));
end
