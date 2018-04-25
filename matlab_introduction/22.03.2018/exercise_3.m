% Plot sin(x) in red, cos(x) in green and y = 0 in black with a legend.

x = linspace(-2 * pi, 2 * pi, 100);

hold on;
plot(x, sin(x), 'r');
plot(x, cos(x), 'g');
plot(x, zeros(length(x), 1), 'k');
legend('sin(x)', 'cos(x)', 'y = 0');
