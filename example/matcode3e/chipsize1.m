%chipsize1.m
n=1:80;
PM=(p.^(8*n)).*(9-8*(p.^n));
plot(n,PM)
nmax = sum(PM>0.9)