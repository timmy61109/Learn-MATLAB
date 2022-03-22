function p=qfunction(x)
%Gaussian Q(x)
%More accurate than
% 1-phi(x) for large x
p=0.5*erfc(x/sqrt(2));