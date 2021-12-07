function y = func12_2(x)
%  Description
%  out = func12_2(x)
%
% Long description
num = 100 * (1 - 0.1 * x .^ 2) .^ 2 + x .^ 2;
den = (1 - x .^ 2) .^ 2 + 0.1 * x .^ 2;
y = sqrt(num ./ den);
