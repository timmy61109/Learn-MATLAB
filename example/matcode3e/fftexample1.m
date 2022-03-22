function X=fftexample1(L,N)
k=0:L-1;
x=cos(2*pi*(0.15)*k);
X=fft(x,N);
phi=(0:N-1)/N;
stem(phi,abs(X));