function out = ex14_8()
%  Description
%  out = ex14_8()
%
% Long description

f = @(x, y) (4 .* x) .* (y<=log(x))
out = dblquad(f, 1, 2, 0, 2)
