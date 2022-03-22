function p=julytemps2(T);
c=36./(1+abs(0:30));
CT=toeplitz(c);
A=ones(31,1)/31.0;
CY=(A')*CT*A;
p=phi((T-80)/sqrt(CY));
