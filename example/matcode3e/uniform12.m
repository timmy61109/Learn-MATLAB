function FX=uniform12(m);
x=sum(rand(12,m))-6;
T=(-3:3);FX=(count(x,T)/m)';
[T;phi(T);FX]