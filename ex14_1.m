function ex14_1()

x = linspace(0, 5);
y = sqrt(4 .* x .^ 2 .+ 2);

plot(x, y, '-'); hold on

dy = gradient(y, x);
plot(x, dy, '-'); hold on

x1 = 4;
y1 = interp1(x, dy, x1, 'spline');

plot(x1, y1, 'o'); hold on

hold off
