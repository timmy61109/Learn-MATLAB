function x=binomialrv(n,p,m)
% m binomial(n,p) samples

r=rand(m,1);
cdf=binomialcdf(n,p,0:n);
x=count(cdf,r);