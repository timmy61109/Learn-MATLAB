function ex14_5()
%  Description
%   = ()
%
% Long description

x = linspace(-1, 1, 100);
y = 2 .* sqrt(1 .- x .^ 2);

trapz(x, y)

quad('2 .* (1 .- x .^ 2)^(1 / 2)', -1, 1)
