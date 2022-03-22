%chipsize2.m
n=1:150;
PM=36*(p.^(7*n))-(63*p.^(8*n))+(28*p.^(9*n));
plot(n,PM)
nmax = sum(PM>0.9)