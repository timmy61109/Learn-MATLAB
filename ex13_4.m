function ex13_4()
%  Description
%   = ()
%
% Long description

x = 0:0.5:6;
y = sqrt(x) ./ (x + 1);

plot(x, y, 'o'); hold on

xi = 0:0.01:6;

y1 = interp1(x, y, xi, 'linear');

plot(x, y, 'o', xi, y1, '-'); hold on
