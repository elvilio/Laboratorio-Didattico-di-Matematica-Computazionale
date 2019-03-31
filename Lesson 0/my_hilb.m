function hilbm = my_hilb (n)
	hilbm = ones(n);
	for i=1:n
		for j=1:n
			hilbm(i,j)/=i+j-1;
		endfor
	endfor	
endfunction
