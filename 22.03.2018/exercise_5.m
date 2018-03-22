% Align four plots in a 2x2 grid

x = linspace(-2 * pi, 2 * pi, 100);

hold on;

subplot(2, 2, 1);
plot(x, sin(x));
title('sin(x)');

subplot(2, 2, 2);
plot(x, cos(x));
title('cos(x)');

subplot(2, 2, 3);
plot(x, tan(x));
title('tan(x)');

subplot(2, 2, 4);
plot(x, cot(x));
title('cot(x)');
