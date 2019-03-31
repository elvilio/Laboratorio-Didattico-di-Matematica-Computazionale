function u = collatz_count(m, start)
    if ~exist('start', 'var')
        start = 0;
    end
	u=zeros(m-start,1);
	for i=1:(m-start)
		u(i)=length(collatz(i+start));
    end
end
