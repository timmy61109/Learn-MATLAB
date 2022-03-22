function S=simcmcstep(Q,p0,n);
%S=simcmcstep(Q,p0,n)
%  Simulate n steps of a cts
%  Markov Chain, rate matrix Q,
%  init. state probabilities p0
K=size(Q,1)-1; %max no. state
S=zeros(n+1,2);%init allocation
%check for integer p0
if (length(p0)==1) 
    p0=((0:K)==p0);
end   
v=sum(Q,2); %state dep. rates
t=1./v;
P=diag(t)*Q;
S(:,1)=simdmc(P,p0,n);
S(:,2)=t(1+S(:,1)) ...
    .*exponentialrv(1,n+1); 
