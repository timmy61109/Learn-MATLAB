function xy=gauss2rv(mx,sdx,my,sdy,r,m)
mu=[mx my]';
cxy=r*sdx*sdy;
C=[sdx^2 cxy; cxy sdy^2];
xy=gaussvector(mu,C,m);