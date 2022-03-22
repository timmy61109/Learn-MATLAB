function xy=dtrianglerv(m)
sx=[1;2;3;4];
px=0.25*ones(4,1);
x=finiterv(sx,px,m);
y=ceil(x.*rand(m,1));
xy=[x';y'];