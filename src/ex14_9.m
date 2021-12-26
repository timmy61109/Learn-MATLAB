function [t, y] = ex14_9()
%  Description
%  [t, y] = ex14_9()
%
% Long description

dy = @(t, y) sin(t) - y * cos(t);
ode45(dy, [0, 2], 6);
[t, y] = ode45(dy, [0, 2], 6);
