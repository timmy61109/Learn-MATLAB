function h=kpredictor(r,M,k);
%usage: h=kpredictor(r,M,k);
%input: r=[R_X(0) R_X(1) .. R_X(m-1)]
%assumes R_X(n)==0 for n >=m
%output=vector a 
% for lmse predictor xx=h'[X(n),X(n-1),..,X(n-N+1)] for X(n+k)
m=length(r);
r=[r(:);zeros(M-m+1,1)]; %appends zeros if needed
RY=toeplitz(r(1:M));
RYX=r(1+k:M+k);
h=flipud(RY\RYX);
