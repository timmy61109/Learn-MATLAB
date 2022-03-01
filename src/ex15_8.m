function ex15_8()
%  Description
%  ex15_8()
%
% Long description

syms x
eq = x ^ 2 - 3 * x + 2
factor(eq)
sol = solve(eq)
