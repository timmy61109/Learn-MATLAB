function f=erlangpdf(n,lambda,x)
     okx=1.0*(x>=0);
     x=okx.*x;
f=(lambda^n/gamma(n))* ...
    okx.*(x.^(n-1)).*exp(-lambda*x);
