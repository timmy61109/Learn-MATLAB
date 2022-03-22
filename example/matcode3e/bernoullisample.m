function OK=bernoullisample(n,m,p);
x=reshape(bernoullirv(p,m*n),n,m);
nn=(1:n)'*ones(1,m);
MN=cumsum(x)./nn;
stderr=sqrt(p*(1-p))./sqrt((1:n)');
stderrmat=stderr*ones(1,m);
OK=sum(abs(MN-p)<stderrmat,2)/m;
plot(1:n,OK);