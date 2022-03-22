function cdf=binomialcdf(n,p,x)
%Usage: cdf=binomialcdf(n,p,x)
%For binomial(n,p) rv X, 
%and input vector x, output is
%vector cdf: cdf(i)=P[X<=x(i)]
x=floor(x(:)); %for noninteger x(i)
allx=0:max(x);
%calculate cdf from 0 to max(x)
allcdf=cumsum(binomialpmf(n,p,allx)); 
okx=(x>=0); %x(i) < 0 are zero-prob values
x=(okx.*x); %set zero-prob x(i)=0
cdf= okx.*allcdf(x+1); %zero for zero-prob x(i)
