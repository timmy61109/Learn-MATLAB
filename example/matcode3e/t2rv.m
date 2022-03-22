function t=t2rv(m)
i=0;lambda=1/3;
t=zeros(m,1);
while (i<m),
    x=exponentialrv(lambda,1);
    if (x>2)
        t(i+1)=x;
        i=i+1;
    end
end