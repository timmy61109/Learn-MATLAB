function ex8_2()
[xx, yy] = meshgrid(-2:0.2:2, -2:0.2:2);
zz = xx ./ exp(xx .^ 2 + yy .^ 2);
[u, v] = gradient(zz);
quiver(xx, yy, u, v)
