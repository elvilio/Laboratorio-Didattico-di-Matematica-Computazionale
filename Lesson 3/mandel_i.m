function s = mandel_i(z,max_iter,p,max_value)
% max_value può essere un vettore che ha valori diversi associati al
% relativo valore del vettore z
if ~exist('max_value', 'var')
    max_value = ones(length(z),1)*1e16;
end
% insieme di mandelbrot generalizzato
if ~exist('p', 'var')
    p = 2;
end

x_1 = z;
x_2 = x_1.^p+z;
% "x_1" e "x_2" sono vettori
while(max_iter>0 & any(abs(x_2)<max_value))
    % ogni loop vado a modificare solo i valori che sono minori del "max_value"
    max_iter = max_iter-1;
    x_1(abs(x_2)<max_value) = x_2(abs(x_2)<max_value);
    x_2(abs(x_1)<max_value) = x_1(abs(x_1)<max_value).^p+z;
end
s = x_2;
end
