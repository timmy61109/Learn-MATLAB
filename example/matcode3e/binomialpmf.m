function pmf=binomialpmf(n,p,x)
%binomial(n,p) rv X, 
%input = vector x
%output= vector pmf: pmf(i)=Prob[X=x(i)]
if p<0.5
    pp=p;
else
    pp=1-p;
end
    i=0:n-1;
    ip= ((n-i)./(i+1))*(pp/(1-pp));
    pb=((1-pp)^n)*cumprod([1 ip]); 
if pp < p
    pb=fliplr(pb);
end
pb=pb(:); % pb=[P[X=0] ... P[X=n]]^t
x=x(:);
okx =(x>=0).*(x<=n).*(x==floor(x));
x=okx.*x;
pmf=okx.*pb(x+1);