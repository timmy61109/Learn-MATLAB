function x=simbuffer(p,c,x0,N)
P=zeros(c+1,c+1);
P(1,1)=1-p;
for i=1:c,
    P(i,i+1)=p; P(i+1,i)=1-p;
end
P(c+1,c+1)=p;
x=simdmc(P,x0,N);
