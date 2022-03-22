function covxy=finitecov(SX,SY,PXY);
%Usage: cxy=finitecov(SX,SY,PXY)
%returns the covariance of 
%finite random variables X and Y
%given by grids SX, SY, and PXY
ex=finiteexp(SX,PXY); 
ey=finiteexp(SY,PXY);
R=finiteexp(SX.*SY,PXY);
covxy=R-ex*ey;
