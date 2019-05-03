function perturbed_poly(p,t,n)
    p1 = meshgrid(p,zeros(n+1,1));
    p1(:,size(p,2)) = p1(:,size(p,2))+((0:n).*t)';
    
    for k = 1:n+1
        hold on;
        plot(roots(p1(k,:)), '*');
    end
end
