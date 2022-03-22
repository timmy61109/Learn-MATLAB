function fxy = freqxy(xy,SX,SY)
%Usage: fxy = freqxy(xy,SX,SY)
%xy is an m x 2 matrix:
%xy(i,:)= ith sample pair X,Y
%Output fxy is a K x 3 matrix:
% [fxy(k,1) fxy(k,2)]
%   = kth unique pair [x y] and 
%   fxy(k,3)= corresp. rel. freq.

%extend xy to include a sample
%for all possible (X,Y) pairs:
xy=[xy; SX(:) SY(:)];
[U,I,J]=unique(xy,'rows');
N=hist(J,1:max(J))-1;
N=N/sum(N);
fxy=[U N(:)];
%reorder fxy rows to match
%rows of [SX(:) SY(:) PXY(:)]:
fxy=sortrows(fxy,[2 1 3]);
