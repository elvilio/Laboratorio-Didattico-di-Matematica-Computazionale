function f = fibonacci(m, start)
    if ~exist('start', 'var')
        start = 1;
    end
	phi = (1 + sqrt(5))/2;
	fibo = @(n) (phi.^n-cos(n.*pi)/phi.^n)./sqrt(5);
	f = round(fibo([start:m]));
end
