function x=uniformrv(a,b,m)
%Usage: x=uniformrv(a,b,m)
%Returns m samples of a 
%uniform (a,b) random varible
x=a+(b-a)*rand(m,1);