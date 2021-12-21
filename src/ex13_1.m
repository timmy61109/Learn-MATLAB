function ex13_1()
%  Description
%   = ()
%
% Long description

x = 0:0.5:10;
y = cos(x) ./ (x + 1);

plot(x, y, 'o')

f = polyval(polyfit(x, y, 3), x);

plot(x, y, 'o', x, f, '-'); hold on

f = polyval(polyfit(x, y, 4), x);

plot(x, y, 'o', x, f, '-'); hold on

f = polyval(polyfit(x, y, 5), x);

plot(x, y, 'o', x, f, '-'); hold on

f = polyval(polyfit(x, y, 6), x);

plot(x, y, 'o', x, f, '-'); hold on
