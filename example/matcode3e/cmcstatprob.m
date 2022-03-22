function pv = cmcstatprob(Q)
%Q has zero diagonal rates
R=Q-diag(sum(Q,2));
n=size(Q,1);
R(:,1)=ones(n,1);
pv=([1 zeros(1,n-1)]*R^(-1))';