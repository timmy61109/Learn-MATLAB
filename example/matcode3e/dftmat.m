function F = dftmat(N);
Usage: F=dftmat(N)
%F is the N by N DFT matrix
n=(0:N-1)';
F=exp((-1.0j)*2*pi*(n*(n'))/N);
