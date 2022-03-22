function e=mse(r)
N=length(r); e=[];
rr=fliplr(r(:)');
for n=1:N,
    RYX=rr(1:n)';
    RY=toeplitz(r(1:n))+0.1*eye(n);
    a=RY\RYX;
    en=r(1)-(a')*RYX;
    e=[e;en];
end
plot(1:N,e);