valori = [10^-3, 10^-13,-10^-13+1i*10^-3,2i];
% valori da valutare

[m,s]=segno(valori,100000,1e-12);
% "m" e "s" sono vettori dato che lo è "valori"

for i=1:length(m)
    fprintf(strcat("Dal valore ", num2str(valori(i)), " dopo ", int2str(m(i)), " passaggi si è arrivati al valore ", int2str(s(i)), "\n"));
end
% quindi il numero di ricorsioni aumenta con l'avvicinarsi allo 0, ma
% converge a 0 se il valore è immaginario puro
clear("valori","m","s","i");