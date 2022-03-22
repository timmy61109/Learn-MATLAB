function ST=simcmc(Q,p0,T);
K=size(Q,1)-1; max no. state
%calc  average trans. rate
ps=cmcstatprob(Q);
v=sum(Q,2); R=ps'*v;
n=ceil(0.6*T/R);
ST=simcmcstep(Q,p0,2*n);
while (sum(ST(:,2))<T),
    s=ST(size(ST,1),1);
    p00=Q(1+s,:)/v(1+s);
    S=simcmcstep(Q,p00,n);
    ST=[ST;S];
end
n=1+sum(cumsum(ST(:,2))<T);
ST=ST(1:n,:);
%truncate last holding time
ST(n,2)=T-sum(ST(1:n-1,2));
