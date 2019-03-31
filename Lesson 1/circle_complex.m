function circle_complex (z, r, step=1000)
	var_vec = linspace(0,2*pi,step);
	var_vec = exp(var_vec*1i)*r+z;
	plot(var_vec,'-');
endfunction
