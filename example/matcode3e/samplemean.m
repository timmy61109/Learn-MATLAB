function M=samplemean(k);
K=(1:k)';
M=zeros(k,5);
for i=1:5,
    X=duniformrv(0,10,k);
    M(:,i)=cumsum(X)./K;
end;
plot(K,M);