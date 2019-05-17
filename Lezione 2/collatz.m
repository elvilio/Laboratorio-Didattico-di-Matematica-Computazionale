function a = collatz(n)
	a=n;
	while n>1
		if rem(n,2)~=0
			n=n*3+1;
		else
			n=n/2;
        end
		a(end+1)=n;
    end
end
