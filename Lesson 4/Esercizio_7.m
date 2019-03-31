%% Triangolo di Sierpinski
S = [.5  0   0
     0   .5  0
     .5  0   .5
     0   .5  0
     .5  0   .25
     0   .5  .5];

X = fract(S,5000);
Color_X = [X(:,1) X(:,2) sin(X(:,1)+X(:,2))];
scatter(X(:,1),X(:,2),1,Color_X);

axis off;

%% Curva di Koch
x = sin(pi/3)/3;
s = 1/6;
t = 1/3;
t2 = 2/3;
K = [ t 0 0
      0 t 0
      s -x t
      x s 0
      s x 0.5
      -x s x
      t 0 t2
      0 t 0 ];

figure(2);
X = fract(K,5000);
Color_X = [X(:,1) X(:,2) atan(X(:,1)+X(:,2))];
scatter(X(:,1),X(:,2),1,Color_X);
axis off;
axis equal;

clear("Color_X", "K", "S", "s", "t", "t2", "x", "X");
