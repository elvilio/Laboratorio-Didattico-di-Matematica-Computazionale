function [m,s] = segno(z, maxiter, epsilon)
% z può essere un vettore, ma vengono trattati indiviualmente i valori
var_iter1 = z;
var_iter2 = (z+(z.^-1))./2;
m=2*ones(1,length(z));

for i=1:length(z)
    while (abs(var_iter1(i)-var_iter2(i))>epsilon & m<maxiter)
        var_iter1(i) = var_iter2(i);
        var_iter2(i) = (var_iter1(i)+(var_iter1(i)^-1))/2;
        m(i)=m(i)+1;
    end
end
s = var_iter2;
end
