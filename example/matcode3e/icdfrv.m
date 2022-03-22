function x=icdfrv(icdfhandle,m)
%Usage: x=icdfrv(@icdf,m)
%returns m samples of rv X
%with inverse CDF icdf.m
u=rand(m,1);
x=feval(icdfhandle,u);
