function x=duniformrv(k,l,m)
%returns m samples of a discrete
%uniform (k,l) random variable 
r=rand(m,1);
cdf=duniformcdf(k,l,k:l);
x=k+count(cdf,r);
