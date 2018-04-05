clear
%% Cascata
[Slave_PID_IAE, Slave_PID_ISE, Slave_PID_ITAE] = get_error_index('../../Figures/Plots/Fig/Cascata/pid_escravo_tanque.fig');
[Master_PID_IAE, Master_PID_ISE, Master_PID_ITAE] = get_error_index('../../Figures/Plots/Fig/Cascata/pid_mestre_tanque.fig');

save('../../Data/Errors/cascata_errors.mat')
