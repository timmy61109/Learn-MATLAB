function [t, y] = ex14_13()
%  Description
%  [t, y] = ex14_13()
%
% Long description

dy = @(t, y) [y(2); -6 * y(2) - 4 * y(1)];
ode45(dy, [0, 5], [1, 0]);
[t, y] = ode45(dy, [0, 5], [1, 0]);
