function pmf=bignomialpmf(n,p,x)
%binomial(n,p) rv X, 
%input = vector x
%output= vector pmf: pmf(i)=Prob[X=x(i)]
k=(0:n-1)';
a=log((p/(1-p))*((n-k)./(k+1)));
L0=n*log(1-p);
L=[L0; L0+cumsum(a)];
pb=exp(L);
% pb=[P[X=0] ... P[X=n]]^t
x=x(:);
okx =(x>=0).*(x<=n).*(x==floor(x));
x=okx.*x;
pmf=okx.*pb(x+1);