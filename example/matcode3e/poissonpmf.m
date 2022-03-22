function pmf=poissonpmf(alpha,x)
%Poisson (alpha) rv X, 
%out=vector pmf: pmf(i)=P[X=x(i)]
x=x(:);
if (alpha==0)
    pmf=1.0*(x==0);
else   
    k=(1:ceil(max(x)))';
    logfacts =cumsum(log(k));
    pb=exp([-alpha; ...
        -alpha+ (k*log(alpha))-logfacts]);
    okx=(x>=0).*(x==floor(x));
    x=okx.*x;
    pmf=okx.*pb(x+1);
end
%pmf(i)=0 for zero-prob x(i)
