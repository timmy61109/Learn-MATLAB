function x=gseq(a,n,m)
nn=0:n;
cx=1./(1+a*nn.^2);
x=gaussvector(0,cx,m);
plot(nn,x);