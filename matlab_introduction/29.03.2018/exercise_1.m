% Use plot3 to plot a "growing" spiral with a grid.

x = linspace(0, 10 * pi);
y = sin(x) .* x;
z = cos(x) .* x;

plot3(x, y, z, 'k', 'linewidth', 5);
grid on;
