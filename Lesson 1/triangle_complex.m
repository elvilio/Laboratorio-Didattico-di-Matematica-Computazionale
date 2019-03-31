function triangle_complex (z, a, theta=0)
	var_r = a * sqrt(3)/3;
	var_vec = linspace(pi/2+theta,5*pi/2+theta,4);
	var_vec = exp(var_vec*1i)*var_r+z;
	plot(var_vec,'r*-');
endfunction
