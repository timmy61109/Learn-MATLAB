function pv = dmcstatprob(P)
n=size(P,1);
A=(eye(n)-P);
A(:,1)=ones(n,1);
pv=([1 zeros(1,n-1)]*A^(-1))';