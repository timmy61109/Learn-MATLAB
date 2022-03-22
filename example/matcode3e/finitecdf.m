function cdf=finitecdf(s,p,x)
% finite random variable X:
% vector sx of sample space
% elements {sx(1),sx(2), ...}
% vector px of probabilities 
% px(i)=P[X=sx(i)]
% Output is the vector 
% cdf: cdf(i)=P[X=x(i)]
cdf=[];
for i=1:length(x)
    pxi= sum(p(find(s<=x(i))));
    cdf=[cdf; pxi];
end