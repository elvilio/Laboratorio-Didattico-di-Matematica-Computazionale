function [position, value, path] = steepest(fun, grad, init, step, ab, cd, itermax, tol)
    path = [];
    xmin = init;
    for s = 1:itermax        
        temp = xmin-step.*grad(xmin(1), xmin(2));
        if fun(temp(1), temp(2)) > fun(xmin(1), xmin(2))
            step = step/2;
            continue;
        end
        if or(or(ab(1)>temp(1),ab(2)<temp(1)), or(cd(1)>temp(2),cd(2)<temp(2)))
            step = step/2;
            continue;
        end
        xmin = temp;
        path = [path; xmin];
        
        if tol>grad(xmin(1), xmin(2))
            fprintf("Si è raggiunta convergenza.\n");
            break;
        end
    end
    if(s==itermax)
        warning("Non si è arrivati a convergenza.")
    end
    position = xmin;
    value = fun(xmin(1), xmin(2));
end

