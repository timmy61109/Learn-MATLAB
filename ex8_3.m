function ex8_2()
[xx, yy]=meshgrid(-2:0.2:2, -2:0.2:2);
zz = xx ./ exp(xx .^ 2 + yy .^ 2);

surf(xx, yy, zz);
axis tight;
hold on

[u, v, w] = surfnorm(xx, yy, zz);
quiver3(xx, yy, zz, u, v, w, 0.3); hold off
