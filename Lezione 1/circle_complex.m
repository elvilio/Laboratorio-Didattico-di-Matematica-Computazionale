function circle_complex (z, r, step)
    if(isempty(step))
        step = 1000;
    end
	var_vec = linspace(0,2*pi,step);
	var_vec = exp(var_vec*1i)*r+z;
	plot(var_vec,'-');
end
