function h=cdfplot(X,Y,xls,yls)
%cdfplot(X,Y,xls,yls)
%X and Y are vectors, Y is the CDF at the jump points
%xls and yls are x and y label strings
h=stairs(X,Y);
if (nargin==4)
xlabel(xls);
ylabel(yls,'VerticalAlignment','Bottom');
end