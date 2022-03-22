function y=sqdistor(v,d,m,T)
%P(error) for m bits tested
%transmit +-v, add N & d(v+N)^2
%receive 1 if x>T, otherwise 0
x=(v+randn(m,1));
[XX,TT]=ndgrid(x,T(:));
P01=sum((XX+d*(XX.^2)< TT),1)/m;
x= -v+randn(m,1);
[XX,TT]=ndgrid(x,T(:));
P10=sum((XX+d*(XX.^2)>TT),1)/m;
y=0.5*(P01+P10);
