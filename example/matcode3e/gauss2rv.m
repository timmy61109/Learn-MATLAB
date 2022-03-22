function xy=gauss2rv(mx,sdx,my,sdy,r,m)
mu= [mx ; my]*ones(1,m);
b2= sdy*sqrt(1-r^2);
A = [sdx 0; r*sdy b2];
xy= mu + A*randn(2,m);