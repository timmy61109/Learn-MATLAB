function cdf=bernoullicdf(p,x)  
%Usage: cdf=bernoullicdf(p,x)
% For Bernoulli (p) rv X,
%given input vector x, output is 
%vector pv such that pv(i)=Prob[X<=x(i)]
x=floor(x(:));
allx=0:max(x);
allcdf=cumsum(bernoullipmf(p,allx)); 
okx= (x>=0); %x_i < 1 are bad values
x=(okx.*x); %set bad x_i=0
cdf= okx.*allcdf(x+1); %zeroes out bad x_i