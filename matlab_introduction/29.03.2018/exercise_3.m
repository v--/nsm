% Plot the histograms of x (from exercise 2), y = 1000 iid Uniform(5, 15) and y^2 / x side by side.

source matlab_introduction/29.03.2018/exercise_2.m;

n = 1000;

hold on;

subplot(1, 3, 1);
hist(x, 30);
title('x = No(100, 5)');

y = 5 + (15 - 5) * rand(n, 1);
subplot(1, 3, 2);
hist(y, 10);
title('y = U(5, 15)');

z = y.^2 / x;
subplot(1, 3, 3);
hist(y, 20);
title('y^2 / x');
