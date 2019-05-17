%% plot 1
figure(1);
hold on;
set(gca, "ygrid", "on");
set(gca, "yminorgrid", "on");
set(gca, "xtick", [linspace(0,25,6),27,30,35]);
set(gca, "xticklabel", [linspace(0,25,6),27,30,35])
var_u=collatz_count(30);
bar(var_u);
clear("var_u")


%% plot 2
figure(2);
hold on;
var_m = double(fibonacci_better(50));
var_r = var_m(2:end)./var_m(1:end-1);
plot(var_r,"b-");
format long;
var_r(end)
set(gca, "ytick", [1 1.2 1.4 1.6 var_r(end) 1.8 2.0]);
set(gca, "yticklabel", [1 1.2 1.4 1.6 var_r(end) 1.8 2.0])

loc_x=10;
func_fib = @(x) sqrt(1+x);
for i=1:1000
	loc_x=func_fib(loc_x);
end
loc_x-var_r(end) % == 0
clear("loc_x", "var_r", "i", "func_fib")


%% plot 3
figure(3)
subplot(1,2,1);
loc_q = abs(max(roots([1 -1 -1])));
var_q = loc_q.^(1:50);
semilogy(var_q, "r-");
hold on;
semilogy(var_m, "b-");
title(["Sequenza di Fibonacci e esponenziale di " num2str(loc_q)]);
clear("loc_q", "var_q", "var_m");

subplot(1,2,2);
var_succ = successione(50);
loc_ro = abs(max(roots([1 -1 0 -1])));
var_ro = loc_ro.^(1:50);
semilogy([1:50],var_succ, "r-");
hold on;
semilogy([1:50],var_ro, "b-");
title(["Successione di ricorrenza e esponenziale di " num2str(loc_ro)]);
clear("loc_ro", "var_ro", "var_succ");


%% plot 4
figure(4);
loc_lim = 200;
var_rfib = abs(rfibonacci(loc_lim));
var_rfib(var_rfib<0) = 1;
loc_c = 1.13198824;
var_c = loc_c.^(1:loc_lim);
semilogy(var_rfib,"r-");
hold on;
semilogy(var_c,"b-");
clear("loc_c", "var_c", "var_rfib");


%% plot 5
close;
figure(5);
set(gca, 'YScale', 'log');
loc_lim = 600;
loc_div = 11;

var_vec = ones(loc_lim,loc_div);
var_beta = [linspace(0.4,0.70258,loc_div/4),linspace(0.70258 + 0.1 ,0.70258*2,3*loc_div/4 + mod(loc_div,4))];
for i=1:loc_div
	var_vec(:,i)=abs(rsuccessione(loc_lim,var_beta(i)));
end

for i=1:loc_div
	var_betaexp(i,1:loc_lim) = var_beta(i).^(1:loc_lim);
end

var_betaexp = var_betaexp';

hold on;
for i=(1:loc_div)
	set(gca,'ColorOrderIndex',i);
	semilogy(var_vec(:,i));
	set(gca,'ColorOrderIndex',i);
	semilogy(var_betaexp(:,i),"--");
end

%%
clear("ans", "i", "loc_div", "loc_lim", "var_beta", "var_vec", "var_betaexp")
