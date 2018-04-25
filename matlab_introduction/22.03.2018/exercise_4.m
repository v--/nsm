% Align sin(x) and cos(x) plots vertically.

x = linspace(-2 * pi, 2 * pi, 100);

hold on;

subplot(2, 1, 1);
plot(x, sin(x));
title('sin(x)');

subplot(2, 1, 2);
plot(x, cos(x));
title('cos(x)');
