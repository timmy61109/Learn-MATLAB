function x = ex12_6()
%  Description
%   = ()
%
% Long description

fplot('(sin(x))^2 - x)', [-10, 10]);
x2 = fzero('(sin(x))^2 - x', -10)
