function pmf=finitepmf(sx,px,x)
% finite random variable X:
% vector sx of sample space
% elements {sx(1),sx(2), ...}
% vector px of probabilities 
% px(i)=P[X=sx(i)]
% Output is the vector 
% pmf: pmf(i)=P[X=x(i)]
pmf=zeros(size(x(:)));
for i=1:length(x)
    pmf(i)= sum(px(find(sx==x(i))));
end