function ret = repetitions(matrix_in,vec_in,point_in,num_of_repetitions)
    % output: ret come vettore 2 x num_of_repetitions
    ret = ones(2,num_of_repetitions);
    ret = ret .* point_in';
    f = @(A, b, x) A*x+b;
    for i=2:num_of_repetitions
        ret(:,i) = f(matrix_in, vec_in, ret(:,i-1));
    end
end
