clear;hold on;axis ("tic", "equal")f = @(x) x.*sin(x);too=f(linspace(0,50,300)');plot(too,"r");t=linspace(-2,2,300)';g = @(t) [t.*(3.-t.^2),3.*t.^2];yoo=g(t);plot(yoo(:,1),yoo(:,2),"linewidth", 2, "g");h = @(x,y) ((x.-1).^2.+y.^2.-4).*((x.+1).^2.+y.^2.-4).*(x.^2.+(y.-sqrt(3)).^2.-4);dim = 100;x=linspace(-4,4,dim).*ones(dim);y=linspace(-4,4,dim)'.*ones(dim);z=h(x,y);contourf(x,y,z,[0,1,5,10]);