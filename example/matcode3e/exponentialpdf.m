function f=exponentialpdf(lambda,x)
f=lambda*exp(-lambda*x);
f=f.*(x>=0);