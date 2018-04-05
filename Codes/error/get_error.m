function [t, e] = get_error(file)

open(file);
D1 = get(gca,'Children'); %get the handle of the line object
XData1 = cell2mat(get(D1,'XData')); %get the x data
YData1 = cell2mat(get(D1,'YData')); %get the y data

ref = YData1(1, :);
output = YData1(2, :);
t = XData1(1, :);

e = ref - output;

plot(XData1, ref, 'b', XData1, output, 'r', XData1, e, 'k');

close;

end
