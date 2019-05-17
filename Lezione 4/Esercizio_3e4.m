S=ferncolor(50000);

mask = zeros(4,size(S,1))<0;
mask(1,:) = (S(:,3) == 1);
mask(2,:) = (S(:,3) == 2);
mask(3,:) = (S(:,3) == 3);
mask(4,:) = (S(:,3) == 4);
% le varie mask vengono usate per colorare i punti più facilmente

hold on;
plot(S(mask(1,:),1),S(mask(1,:),2),"g.");
plot(S(mask(2,:),1),S(mask(2,:),2),"r.");
plot(S(mask(3,:),1),S(mask(3,:),2),"b.");
plot(S(mask(4,:),1),S(mask(4,:),2),"k.");
hold off;
axis off;

%%
clear("mask", "S");
