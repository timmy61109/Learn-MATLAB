function cdf=duniformcdf(k,l,x)
%Usage: cdf=duniformcdf(k,l,x)
% For discrete uniform (k,l) rv X
% and input vector x, output is
% vector cdf: cdf(i)=Prob[X<=x(i)]
x=floor(x(:)); %for noninteger x_i
allx=k:max(x);
%allcdf = cdf values  from 0 to max(x)
allcdf=cumsum(duniformpmf(k,l,allx)); 
%x_i < k are zero prob values
okx=(x>=k); 
%set zero prob x(i)=k
x=((1-okx)*k)+(okx.*x); 
%x(i)=0 for zero prob x(i)
cdf= okx.*allcdf(x-k+1); 
