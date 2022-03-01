function ex15_18()
%  Description
%  ex15_18()
%
% Long description

a = sym([-1 2; 1 6])
b = sym([4 0]')

inv(a)
inv(a) * b

am = [a, b]

rref(am)

a \ b
