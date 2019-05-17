%% Curva di Lèvy
S = levy(50000);
color_S = [-real(S),cos(imag(S)),sin(real(S))];
% il colore varia a seconda del punto in modo continuo
scatter(imag(S),real(S),1,color_S);

axis off;
axis equal;

%%
clear("S", "color_S");
