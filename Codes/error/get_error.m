function [t, e] = get_error(file, ref)

fig = openfig(file);
h = findobj(fig, 'Type', 'line');
t = get(h, 'Xdata');
y6 = get(h, 'Ydata');

y5 = ones(1, size(y6, 2))*ref;

e = y5 - y6;

plot(t, y5);
hold on;
plot(t, y6, 'r');
hold on;
plot(t, e, 'k');
hold off;

end