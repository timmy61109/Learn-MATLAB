function ...
   S=simmmcc(lam,mu,c,p0,T);
%Simulate M/M/c/c queue, time T. 
%lam=arr. rate, mu=svc. rate
%p0=init. state distribution
%c= number of servers
Q=zeros(c+1,c+1);
for i=1:c,
    Q(i,i+1)=lam;
    Q(i+1,i)=(i-1)*mu;
end
S=simcmc(Q,p0,T);
