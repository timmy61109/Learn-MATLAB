function y=sinc(x);
xx=x+(x==0);
y=sin(pi*xx)./(pi*xx);
y=((1.0-(x==0)).*y)+ (1.0*(x==0));