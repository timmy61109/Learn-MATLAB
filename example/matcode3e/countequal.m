function n=countequal(x,y)
%Usage:  n=countequal(x,y)
%n(j)= # elements of x = y(j)
[MX,MY]=ndgrid(x,y);
%each column of MX = x
%each row of MY = y
n=(sum((MX==MY),1))';
