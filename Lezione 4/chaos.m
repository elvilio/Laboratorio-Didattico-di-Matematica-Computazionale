function return_vector = chaos(iterations, number_of_points, distance_traveled)
    % number_of_points è distribuito equidistante sulla circonferenza centrata in (0,0)
    % distance_traveled dovrebbe essere fra 0 e 1, altrimenti viente invertita
    % pre valori n_o_p = 3 e d_t = 1/2 si ottinene il triangolo di Sierpinski
    
    points = exp(linspace(0,2*pi,number_of_points+1).*1i);
    points = points(1:end-1);

    if distance_traveled>1
        distance_traveled = 1/distance_traveled;
    end
    
    return_vector = zeros(iterations,2);
    return_vector(1,1) = rand() + 1i*rand();
    % la seconda colonna viene usata per vedere verso quale punto è stato traslato

    p = linspace(1/number_of_points,1,number_of_points);
    p_lower = [0 p(1:end-1)];
    
    for k = 2:iterations+20
        mask=ones(1,length(p)) * rand();
        mask = mask<p & mask>p_lower;
        return_vector(k,1) = (points(mask)+return_vector(k-1,1))*distance_traveled;
        return_vector(k,2) = find(mask);
    end
    
    return_vector = return_vector(21:end,:);
end
