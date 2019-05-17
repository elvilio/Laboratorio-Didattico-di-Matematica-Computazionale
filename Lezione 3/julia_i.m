function a = julia_i(z,s,max_iter,max_value)
% max_value può essere un vettore che ha valori diversi associati al
% relativo valore del vettore z
if ~exist('max_value', 'var')
    max_value = ones(length(z),1)*1e16;
end

x_1 = z;
x_2 = x_1.^2+s;
% "x_1" e "x_2" sono vettori
while(max_iter>0 & any(abs(x_2)<max_value))
    % ogni loop vado a modificare solo i valori che sono minori del "max_value"
    max_iter = max_iter-1;
    x_1(abs(x_2)<max_value) = x_2(abs(x_2)<max_value);
    x_2(abs(x_1)<max_value) = x_1(abs(x_1)<max_value).^2+s;
end
a = x_2;
end
