function out = ex14_7()
%  Description
%  ex14_7()
%
% Long description
%
% 計算定積分
% Octave 不支援使用 '' 方式輸入函式

f = @(x, y) (4 .* x) .* (y<=log(x))
out = dblquad(f, 1, 2, 0, 2)
