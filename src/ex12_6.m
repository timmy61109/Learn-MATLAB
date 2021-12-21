function y = ex12_6()
%  Description
%   = ()
%
% Long description

x = linspace(-5, 5);
p = [1 -3 2];
y = polyval(p, x);
plot(x, y); hold on

% y = x .^ 2 + 3 .* x +2;

sol = roots(p);
yy = polyval(p, sol);
plot(sol, yy, 'o'); hold off
