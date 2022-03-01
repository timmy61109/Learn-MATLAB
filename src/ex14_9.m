function [t, y] = ex14_9()
%  Description
%  [t, y] = ex14_9()
%
% Long description

% dy = @(t, y) sin(t) - y * cos(t);
dsolve('sin(t) - y * cos(t)', 'y(0)=6');
ezplot(ans, [0, 2]);
