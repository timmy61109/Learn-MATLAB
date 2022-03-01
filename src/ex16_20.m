function ex16_18()
%  Description
%  ex16_18()
%
% Long description

syms x y a b area;

a = -1;
b = 2;

area = int(-x ^ 2 + 2 * x + 3, x, a, b) - int(x + 1, x, a, b)
