
% random sample and histogram of sx

clear;

m = 10000;

sx = [1:8];

px = [0.15 * ones(1,4) 0.1 * ones(1,4)];

x = finiterv(sx, px, m)

figure,hist(x, 8)


% random sample and histogram of gx

gx = (sx<=5).*(105*sx-5*sx.^2)+(sx>5).*(500)

y = finiterv(gx, px, m)

figure,hist(y,6)


% expectation and variance of sx

esx=sum(px.*sx)

vsx=sum(px.*(sx-esx).^2)

% expectation and variance of x

ex=sum(x)/length(x)

vx=sum((x-ex).^2)/length(x)

% expectation and variance of gx

egx=sum(px.*gx)

vgx=sum(px.*(gx-egx).^2)

% expectation and variance of y

ey=sum(y)/length(y)

vy=sum((y-ey).^2)/length(y)
