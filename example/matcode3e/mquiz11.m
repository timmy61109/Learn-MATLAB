%mquiz11.m
N=32;
rx=[2 4 2]; SX=fftc(rx,N); %autocorrelation and PSD
stem(0:N-1,abs(sx));
xlabel('n');ylabel('S_X(n/N)');
h2=0.5*[1 1]; H2=fft(h2,N); %impulse/filter response: M=2
SY2=SX.* ((abs(H2)).^2);
figure; stem(0:N-1,abs(SY2)); %PSD of Y for M=2
xlabel('n');ylabel('S_{Y_2}(n/N)');
h10=0.1*ones(1,10); H10=fft(h10,N); %impulse/filter response: M=10
SY10=sx.*((abs(H10)).^2);
figure; stem(0:N-1,abs(SY10));
xlabel('n');ylabel('S_{Y_{10}}(n/N)');