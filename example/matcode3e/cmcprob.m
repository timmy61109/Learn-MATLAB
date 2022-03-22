function pv = cmcprob(Q,p0,t)
%Q has zero diagonal rates
%initial state probabilities p0
K=size(Q,1)-1; %max no. state
%check for integer p0
if (length(p0)==1) 
    p0=((0:K)==p0);
end   
R=Q-diag(sum(Q,2));
pv= (p0(:)'*expm(R*t))';
