function rho=finitecoeff(SX,SY,PXY);
%Usage:  rho=finitecoeff(SX,SY,PXY)
%Calculate the correlation coefficient rho of 
%finite random variables X and Y
ex=finiteexp(SX,PXY); vx=finitevar(SX,PXY);
ey=finiteexp(SY,PXY); vy=finitevar(SY,PXY);
R=finiteexp(SX.*SY,PXY);
rho=(R-ex*ey)/sqrt(vx*vy);
