function cdf=pascalcdf(k,p,x) 
%Usage: cdf=pascalcdf(k,p,x) 
%For a pascal (k,p) rv X
%and input vector x, the output
%is a vector cdf such that
% cdf(i)=Prob[X<=x(i)]
x=floor(x(:)); % for noninteger x(i)
allx=k:max(x);
%allcdf holds all needed cdf values
allcdf=cumsum(pascalpmf(k,p,allx));
%x_i < k have zero-prob, 
% other values  are OK
okx=(x>=k); 
%set zero-prob x(i)=k, 
%just so indexing is not fouled up 
x=(okx.*x) +((1-okx)*k); 
cdf= okx.*allcdf(x-k+1);
