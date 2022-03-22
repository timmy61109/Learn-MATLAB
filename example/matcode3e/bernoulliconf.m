function MN=bernoulliconf(n,p);
x=bernoullirv(p,n);
MN=cumsum(x)./((1:n)');
nn=(10:n)'; MN=MN(nn);
std90=(0.41)./sqrt(nn);
std99=(0.645/0.41)*std90;
y=[MN MN-std90 MN+std90];
y=[y MN-std99 MN+std99];
plot(nn,y);