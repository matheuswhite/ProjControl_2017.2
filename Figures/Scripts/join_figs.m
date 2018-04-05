function join_figs(folder_in, folder_out, name, end1, end2)

fig1 = [folder_in name end1 '.fig'];
fig2 = [folder_in name end2 '.fig'];

plot1 = open(fig1);
D1 = get(gca,'Children'); %get the handle of the line object
XData1 = cell2mat(get(D1,'XData')); %get the x data
YData1 = cell2mat(get(D1,'YData')); %get the y data

plot2 = open(fig2);
D2 = get(gca,'Children'); %get the handle of the line object
XData2 = cell2mat(get(D2,'XData')); %get the x data
YData2 = cell2mat(get(D2,'YData')); %get the y data
close(plot2)

subplot(2, 1, 1);
plot(XData1(3, :), YData1(3, :), 'b', XData1(2, :), YData1(2, :), 'r', XData1(1, :), YData1(1, :), 'g');
grid on;
title('Sinais do Controlador', 'fontweight','bold','fontsize',12);
xlabel('Tempo (s)');
ylabel('Amplitude');
legend('P', 'I', 'D');

subplot(2, 1, 2);
plot(XData2(1, :), YData2(1, :), 'b', XData2(2, :), YData2(2, :), 'r');
grid on;
title('Nível do Tanque', 'fontweight','bold','fontsize',12);
xlabel('Tempo (s)');
ylabel('Altura (cm)');
legend('Referência', 'Saída');

print([folder_out name],'-dpng');

close;

end