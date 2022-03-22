function smoothdft(M,N);
phi=0.01:0.01:1;
hdtft=(1-exp(-j*2*pi*phi*M))./ ...
    (M*(1-exp(-j*2*pi*phi)));
h=ones(1,M)/M;
hdft=fft(h,N);
n=(0:(N-1))/N;
stem(n,abs(hdft));
hold on;
plot(phi,abs(hdtft));
hold off;