function w=brownian(alpha,t)
%Brownian motion process 
%sampled at t(1)<t(2)< ... 
t=t(:);
n=length(t);
delta=t-[0;t(1:n-1)];
x=sqrt(alpha*delta).*gaussrv(0,1,n);
w=cumsum(x);