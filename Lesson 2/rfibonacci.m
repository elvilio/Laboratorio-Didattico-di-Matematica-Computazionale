function rf = rfibonacci(m)
    rf = [];
	fibo = @(x1,x2) x1 +((-1)^(rand()>.5))*x2;
	rf(end+1:end+2)=1;
	for i=[3:m]
		rf(end+1)=fibo(rf(end),rf(end-1));
    end
end
