function S=fract(C,m)
    dets = ones(size(C,1)/2,1);
    for k=1:size(dets,1)
        dets(k) = det(C(2*k-1:2*k,1:2));
    end
    
    for k=1:size(dets,1)
        dets(k) = max(dets(k), max(dets)/(25*size(dets,1)));
    end
    dets = dets./sum(dets);
    
    p = zeros(size(dets,1),1);
    mask = 1:size(dets,1);
    for k=1:size(dets,1)
        p(mask>=k) = p(mask>=k)+dets(mask>=k);
    end
    p = [0;p(1:size(p,1)-1)];
    
    x = zeros(m+20,2);
    x(1,:) = rand(1,2);
    
    f = @(A,x,b) A*x'+b;
    
    for k=1:size(x,1)-1
        h=sum(p<rand());
        x(k+1,:) = f(C(2*h-1:2*h,1:2),x(k,:),C(2*h-1:2*h,3))';
    end
    
    S = x(21:end,:);
end
