function h=lmsepredictor(r,M);
%usage: h=lmsepredictor(r,M);
%input: r=[R_X(0) R_X(1) .. R_X(m-1)]
%assumes R_X(n)==0 for n >=m
%output=vector h
% conv(h,x) produces seq of predictions
m=length(r);
r=[r(:);zeros(M-m+1,1)]; %appends zeros if needed
RY=toeplitz(r(1:M));
RYX=r(M+1:-1:2);
a=RY\RYX;
h=a(M:-1:1);
