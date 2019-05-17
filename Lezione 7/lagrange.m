function v=lagrange(x,y,interpx)
    v = zeros(1,length(interpx));
    for temp_1 = 1:length(x)
        p_i = [x(1:temp_1-1),x(temp_1+1:end)];
        L_i = [1/(x(temp_1)-p_i(1)), -p_i(1)/(x(temp_1)-p_i(1))];
        for temp_2 = 2:length(p_i)
            L_i = conv(L_i, [1/(x(temp_1)-p_i(temp_2)), -p_i(temp_2)/(x(temp_1)-p_i(temp_2))]);
        end
        v = v + y(temp_1)*polyval(L_i, interpx);
    end
end
