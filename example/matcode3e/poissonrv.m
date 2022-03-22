function x=poissonrv(alpha,m)
%return m samples of poisson(alpha) rv X 
r=rand(m,1);
rmax=max(r);
xmin=0;
xmax=ceil(2*alpha); %set max range
sx=xmin:xmax;
cdf=poissoncdf(alpha,sx);
%while ( sum(cdf <=rmax) ==(xmax-xmin+1) )
while cdf(length(cdf)) <=rmax
    xmax=2*xmax;
    sx=xmin:xmax;
    cdf=poissoncdf(alpha,sx);
end
x=xmin+countless(cdf,r);