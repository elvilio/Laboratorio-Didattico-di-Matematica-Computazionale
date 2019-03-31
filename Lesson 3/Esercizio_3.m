a=-5;
b=5;
c=-5;
d=5;
maxiter=100;
epsilon=1e-8;
[~,~,iter] = bsegno(a,b,c,d,maxiter,epsilon,1000);
imagesc(iter');

a=-1.1;
b=-.9;
c=-.1;
d=.1;
maxiter=100;
epsilon=1e-8;
[~,~,iter] = bsegno(a,b,c,d,maxiter,epsilon,1000);
imagesc(iter'); % vicino al punto (-1,0)
clear("a","b","c","d","maxiter","epsilon","iter");