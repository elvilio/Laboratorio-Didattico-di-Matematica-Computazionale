K = 100;
err = zeros(4, K);

err(1, :) = convergenza_exp([0,0,0;0,.2,0;0,0,.5], K);
err(2, :) = convergenza_exp([1.5,0,0;0,2,0;0,0,5], K);
err(3, :) = convergenza_exp([40,32;16,18], K);
err(4, :) = convergenza_exp([-49,24;-64,31], K);

for s=1:4
    figure(s)
    plot(err(s,:));
end

% Si può notare come per la prima matrice l'errore è subito contenuto e
% rimane inferiore a .15 fino dal primo passo; per la seconda matrice
% l'errore è inizialmente superiore a 100 ma decresce tendendo a 0; nella
% terza matrice l'errore è inizialmente molto elevato (circa 10e23) ma
% attorno al passo 40 decresce velocemente per poi tendere a 0; la quarta
% matrice invece ha un errore contenuto inizialmente ma cresce
% esponenzialmente per avere un massimo al passo 16 e poi avere limite a 0