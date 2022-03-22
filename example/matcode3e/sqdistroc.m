function FM=sqdistroc(v,d,m,T)
%square law distortion recvr
%P(error) for m bits tested
%transmit v volts or -v volts,
%add N volts, N is Gauss(0,1)
%add d(v+N)^2 distortion
%receive 1 if x>T, otherwise 0
%FM = [P(FA) P(MISS)]
x=(v+randn(m,1));
[XX,TT]=ndgrid(x,T(:));
P01=sum((XX+d*(XX.^2)< TT),1)/m;
x= -v+randn(m,1);
[XX,TT]=ndgrid(x,T(:));
P10=sum((XX+d*(XX.^2)>TT),1)/m;
FM=[P10(:) P01(:)];