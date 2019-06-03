%%
fun = @(x, y) (x.^2)./2 + 2.*(y.^2);
grad = @(x, y) [x, 4*y];

ab = [-2, 2];
cd = [-2, 2];

figure(2);
[X, Y] = meshgrid(ab(1):0.01:ab(2),cd(1):0.01:cd(2));
Z = fun(X, Y);
view(3);

surface(X,Y,Z);
shading flat;
hold on;

[~, ~, path] = steepest(fun, grad, [2, 2], 0.1, ab, cd, 1000, 1E-3);

plot3(path(:,1), path(:,2), fun(path(:,1), path(:,2)), "--r");
title("Plot della funzione $$f(x, y) = \frac{x^2}{2} + 2y^2$$ con steepest decent in rosso", "interpreter", "latex");

%%
clear("ab", "cd", "fun", "grad", "path", "X", "Y", "Z");
