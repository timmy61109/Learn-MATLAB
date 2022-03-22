function cdf=geometriccdf(p,x)
% for geometric(p) rv X, 
%For input vector x, output is vector 
%cdf such that cdf_i=Prob(X<=x_i)
x=(x(:)>=1).*floor(x(:));
cdf=1-((1-p).^x);