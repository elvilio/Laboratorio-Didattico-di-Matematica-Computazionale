%% 1.
subplot(2,2,1);
f = @(x,y) 2 .* sin((x.^2 +y.^2).^.5);
[X,Y] = meshgrid(0:0.1:20,0:0.1:20);
mesh(X,Y,f(X,Y));

%% 2.
subplot(2,2,2);
f = @(x,y) (x.^2)./2 + (y.^2)./3;
a = rand()*20+1;
b = rand()*20+1;
[X,Y] = meshgrid(-a:0.1:a,-b:0.1:b);
mesh(X,Y,f(X,Y));


%% 3.
subplot(2,2,3);
f = @(x,y) exp(-(x.^2)-(y.^2));
a = rand()*5+4;
b = rand()*5+4;
[X,Y] = meshgrid(-a:0.1:a,-b:0.1:b);
mesh(X,Y,f(X,Y));

%% 4.
subplot(2,2,4);
f = @(x,y) x .* exp(-(x-(y.^2)).^2 -(y.^2));
a = 5;
b = 5;
[X,Y] = meshgrid(-a:0.1:a,-b:0.1:b);
mesh(X,Y,f(X,Y));

%%
clear("a", "b", "f", "X", "Y")