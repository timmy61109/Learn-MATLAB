function F=uniformcdf(a,b,x)
%Usage: F=uniformcdf(a,b,x)
%returns the CDF of a continuous
%uniform rv evaluated at x
F=(x-a).*((x>=a) & (x<b))/(b-a);
F=F+1.0*(x>=b);