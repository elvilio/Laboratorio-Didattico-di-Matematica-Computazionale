%% Definizione omotetie, traslazioni e punto iniziale
A(:,:,1) = [.85 .04;-.04 .85];
A(:,:,2) = [.2 -.26;.23 .22];
A(:,:,3) = [-.15 .28;.26 .24];
A(:,:,4) = [0 0;0 .16];

b(:,1) = [0;1.6];
b(:,2) = [0;1.6];
b(:,3) = [0;.44];
b(:,4) = [0;0];

x = [1,1];

%% Plot delle diverse trasformazioni tramite la funzione repetitions
figure(1);
for k=1:4
    subplot(2,2,k);
    S(:,:,k)=repetitions(A(:,:,k), b(:,k), x, 50);
    plot(S(1,:,k), S(2,:,k), "-");
end

%%
clear("A","b","k","S","x");
