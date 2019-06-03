function [position, value] = forzabruta(handle_f, interval, resolution)
lin = linspace(interval(1), interval(2), resolution);
try
    s = handle_f(lin);
catch
    try
        for k=1:resolution
            s(k) = handle_f(lin(k));
        end
        warning("The function is not vectorizable");
    catch ERR
        rethrow(ERR);
    end
end

value = min(s);
position = lin(s==value);
end
