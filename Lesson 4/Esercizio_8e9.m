%% altra rappresentazione del Triangolo di Sierpinski
S = chaos(50000,3,.5);

mask(1,:) = (S(:,2) == 1);
mask(2,:) = (S(:,2) == 2);
mask(3,:) = (S(:,2) == 3);

hold on;
plot(imag(S(mask(1,:),1)), real(S(mask(1,:),1)),"g.");
plot(imag(S(mask(2,:),1)), real(S(mask(2,:),1)),"r.");
plot(imag(S(mask(3,:),1)), real(S(mask(3,:),1)),"b.");
hold off;
axis off;
% se i punti non fossero equidistanti sulla circonferenza unitaria si
% otterrebbe un triangolo simile, ma traslato, ruotato o trasformato
% linearmente

%% Hexaflake
S = chaos(50000,6,3);

for k=1:6
    mask(k,:) = (S(:,2) == k);
end
figure(2);
hold on;
plot(imag(S(mask(1,:),1)), real(S(mask(1,:),1)),"g.");
plot(imag(S(mask(2,:),1)), real(S(mask(2,:),1)),"r.");
plot(imag(S(mask(3,:),1)), real(S(mask(3,:),1)),"b.");
plot(imag(S(mask(4,:),1)), real(S(mask(4,:),1)),"k.");
plot(imag(S(mask(5,:),1)), real(S(mask(5,:),1)),"m.");
plot(imag(S(mask(6,:),1)), real(S(mask(6,:),1)),"y.");
hold off;
axis off;
axis equal;

clear("mask","S","k");
