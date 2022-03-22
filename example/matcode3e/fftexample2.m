function X=fftexample2(L,N)
k=0:L-1;
x=cos(2*pi*(0.20)*k) ...
      +cos(2*pi*(0.25)*k);
X=fft(x,N);
stem((0:N-1)/N,abs(X));
