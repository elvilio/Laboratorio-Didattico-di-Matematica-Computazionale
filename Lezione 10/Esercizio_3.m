%%
figure(1);

fun = @(x) (x(1).^2)./2 + 2.*(x(2).^2);
fun2 = @(x,y) (x.^2)./2 + 2.*(y.^2);

[x, Fx] = fminunc(fun, [2,2]);

ab = [-2, 2];
cd = [-2, 2];

[X, Y] = meshgrid(ab(1):0.01:ab(2),cd(1):0.01:cd(2));
Z = fun2(X,Y);

subplot(1,2,1);
view(3);
surface(X,Y,Z);
shading flat;
hold on;
plot3(x(1), x(2), Fx, "or");
title("Plot della funzione $$f(x, y) = \frac{x^2}{2} + 2y^2$$", "interpreter", "latex");

%% Funzione di Rosenbrock
fun = @(x) 100.*(x(2)-x(1).^2).^2+(1-x(1)).^2;
fun2 = @(x,y) 100.*(y-x.^2).^2+(1-x).^2;

[x, Fx] = fminunc(fun, [2,2]);

ab = [-2, 2];
cd = [-1, 3];

[X, Y] = meshgrid(ab(1):0.01:ab(2),cd(1):0.01:cd(2));
Z = fun2(X,Y);

subplot(1,2,2);
view(3);
surface(X,Y,Z);
shading flat;
hold on;
plot3(x(1), x(2), Fx, "or");
title("Plot della funzione $$f(x, y) = 100 (y-x^2)^2+(1-x)^2$$", "interpreter", "latex");

%%
clear("ab", "cd", "fun", "fun2", "Fx", "x", "X", "Y", "Z");
