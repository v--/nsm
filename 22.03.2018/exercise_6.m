% Animate the drawing of sin(x) from -10 to 10 using a step of 0.01.
% Overlay it with an animation of drawing sin(x) in the same interval,
% but with a step of 1 and a corresponding change in speed.

hold on;

for k = -10:0.01:10
  y = sin(k);
  plot(k, y, 'r');
  pause(0.01);
end

for k = -10:1:10
  y = sin(k);
  plot(k, y, 'r*');
  pause(1);
end
