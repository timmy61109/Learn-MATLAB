function f=gausspdf(mu,sigma,x)
f=exp(-(x-mu).^2/(2*sigma^2))/...
    sqrt(2*pi*sigma^2);