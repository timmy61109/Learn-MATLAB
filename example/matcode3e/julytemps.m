function p=julytemps(T);
[D1 D2]=ndgrid((1:31),(1:31));
CT=36./(1+abs(D1-D2));
A=ones(31,1)/31.0;
CY=(A')*CT*A;
p=phi((T-80)/sqrt(CY));
