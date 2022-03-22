function s=poissonarrivals(lam,T)
%arrival times s=[s(1) ... s(n)]
%  s(n)<= T < s(n+1)
n=ceil(1.1*lam*T);
s=cumsum(exponentialrv(lam,n));
while (s(length(s))< T),
  s_new=s(length(s))+ ...
    cumsum(exponentialrv(lam,n));
  s=[s; s_new]; 
end
s=s(s<=T);
