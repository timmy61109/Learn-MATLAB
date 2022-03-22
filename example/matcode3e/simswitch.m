function M=simswitch(lambda,mu,t)
%Poisson arrivals, rate lambda
%Exponential (mu) call duration
%For vector t of times
%M(i) = no. of calls at time t(i)
s=poissonarrivals(lambda,max(t));
y=s+exponentialrv(mu,length(s));
A=count(s,t);
D=count(y,t);
M=A-D;
