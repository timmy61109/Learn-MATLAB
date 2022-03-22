function f=bivariategausspdf(muX,muY,sigmaX,sigmaY,rho,x,y)
%Usage: f=bivariategausspdf(muX,muY,sigmaX,sigmaY,rho,x,y)
%Evaluate the bivariate Gaussian (muX,muY,sigmaX,sigmaY,rho) PDF  
nx=(x-muX)/sigmaX;
ny=(y-muY)/sigmaY;
f=exp(-((nx.^2) +(ny.^2) - (2*rho*nx.*ny))/(2*(1-rho^2)));
f=f/(2*pi*sigmaX*sigmaY*sqrt(1-rho^2));