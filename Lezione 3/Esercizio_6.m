figure(1);
Z = julia(-1.5, 1.5, -1.5, 1.5, 0.27334-0.00742i, 20, 1000);
imagesc(exp(-abs(Z)));
set(gca,'dataAspectRatio',[1 1 1]);

figure(2);
Z = julia(-1.5, 1.5, -1.5, 1.5, -0.82-0.2i, 20, 1000);
imagesc(exp(-abs(Z)));
set(gca,'dataAspectRatio',[1 1 1]);

figure(3);
Z = julia(-1.5, 1.5, -1.5, 1.5, -0.70176-0.3842i, 20, 1000);
subplot(1,2,1),imagesc(exp(-abs(Z)));
set(gca,'dataAspectRatio',[1 1 1]);

Z = julia(-1.5, 1.5, -1.5, 1.5, -0.70176-0.3842i, 30, 1000);
subplot(1,2,2), imagesc(exp(-abs(Z)));
set(gca,'dataAspectRatio',[1 1 1]);
% esiste una differenza sostanziale fra k=20 e K=30, dato che alcuni valori
% hanno una divergenza relativamente lenta e quindi risultano colorati
% se il valore di K è troppo basso; se si aumenta ulteriormente la figura
% risulterà più piccola

%%
clear("Z");
