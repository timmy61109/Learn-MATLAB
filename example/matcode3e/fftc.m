function S=fftc(varargin);
%DFT for a signal r
%centered at the origin 
%Usage:
%  fftc(r,N): N point DFT of r
%  fftc(r): length(r) DFT of r
r=varargin{1};
L=1+floor(length(r)/2);
if (nargin>1)
    N=varargin{2}(1);
else
    N=(2*L)-1; 
end
R=fft(r,N);
n=reshape(0:(N-1),size(R));
phase=2*pi*(n/N)*(L-1);
S=R.*exp((1.0j)*phase);