function x=pascalrv(k,p,m)
% return m samples of pascal(k,p) rv 
r=rand(m,1);
rmax=max(r);
xmin=k;
xmax=ceil(2*(k/p)); %set max range
sx=xmin:xmax;
cdf=pascalcdf(k,p,sx);
while cdf(length(cdf)) <=rmax
    xmax=2*xmax;
    sx=xmin:xmax;
    cdf=pascalcdf(k,p,sx);
end
x=xmin+countless(cdf,r);