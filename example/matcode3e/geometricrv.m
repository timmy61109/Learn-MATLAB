function x=geometricrv(p,m)
%Usage: x=geometricrv(p,m)
%   returns m samples of a geometric (p) rv 
r=rand(m,1);
x=ceil(log(1-r)/log(1-p));