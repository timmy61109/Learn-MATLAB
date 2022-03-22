function pv=bernoullipmf(p,x) 
%For Bernoulli (p) rv X
%input = vector x
%output = vector pv 
%such that pv(i)=Prob(X=x(i))
pv=(1-p)*(x==0) + p*(x==1);
pv=pv(:);