function f = fibonacci_better (n, start)
    if ~exist('start', 'var')
        start = 1;
    end
    f = [];
	fibo = @(x) ([1 1;1 0]^(x-1));
	for i=[start:n]
        temp = round(fibo(i));
		f(end+1) = temp(1,1);
    end
end
