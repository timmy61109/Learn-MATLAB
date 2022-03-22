function n=count(x,y)
     %Usage n=count(x,y)
%n(i)= # elements of x <= y(i)
[MX,MY]=ndgrid(x,y);
%each column of MX = x
%each row of MY = y
n=(sum((MX<=MY),1))';
