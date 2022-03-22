function pb=erlangb(rho,c);
%Usage: pb=erlangb(rho,c)
%returns the Erlang-B blocking 
%probability for sn M/M/c/c
%queue with load rho
pn=exp(rho)*poissonpmf(rho,0:c);
pb=pn(c+1)/sum(pn);
