figure(1);
W=mandel(-2,0.6,-1,1,20,2,2000);
imagesc(exp(-abs(W))); % non è necessario trasporre la matrice

figure(2);
W=mandel(-1.2, 1.2, -1.2, 1.2, 20, 8, 2000);
imagesc(exp(-abs(W)));

%%
clear("W");
