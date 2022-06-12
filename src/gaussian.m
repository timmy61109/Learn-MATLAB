clear;

quad('1/sqrt(2*pi*10^2)*exp(-(x-61).^2/(2*10^2))',51,71)


x=[-4:0.1:4];

fx=1/sqrt(2*pi*1^2)*exp(-(x).^2/(2*1^2));

figure,plot(x,fx),axis([-8 8 0 0.4])

y=[-8:0.1:8];

fy=1/sqrt(2*pi*2^2)*exp(-(y).^2/(2*2^2));

figure,plot(y,fy),axis([-8 8 0 0.4])


quad('1/sqrt(2*pi*1^2)*exp(-(x).^2/(2*1^2))',-1,1)

quad('1/sqrt(2*pi*1^2)*exp(-(x).^2/(2*1^2))',3.5,8)


quad('1/sqrt(2*pi*2^2)*exp(-(y).^2/(2*2^2))',-1,1)

quad('1/sqrt(2*pi*2^2)*exp(-(y).^2/(2*2^2))',3.5,8)
