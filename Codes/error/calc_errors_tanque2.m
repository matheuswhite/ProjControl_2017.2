clear
%% Tanque2
%% Valores_Estimados
[Estimated_I_PD_IAE, Estimated_I_PD_ISE, Estimated_I_PD_ITAE] = get_error_index('../../Figures/Plots/Fig/Tanque2/Valores_Estimados/ctr_i-pd_val_nosso_tank2.fig');
[Estimated_P_IAE, Estimated_P_ISE, Estimated_P_ITAE] = get_error_index('../../Figures/Plots/Fig/Tanque2/Valores_Estimados/ctr_p_val_nosso_tank2.fig');
[Estimated_PD_IAE, Estimated_PD_ISE, Estimated_PD_ITAE] = get_error_index('../../Figures/Plots/Fig/Tanque2/Valores_Estimados/ctr_pd_val_nosso_tank2.fig');
[Estimated_PI_D_IAE, Estimated_PI_D_ISE, Estimated_PI_D_ITAE] = get_error_index('../../Figures/Plots/Fig/Tanque2/Valores_Estimados/ctr_pi-d_val_nosso_tank2.fig');
[Estimated_PI_IAE, Estimated_PI_ISE, Estimated_PI_ITAE] = get_error_index('../../Figures/Plots/Fig/Tanque2/Valores_Estimados/ctr_pi_val_nosso_tank2.fig');
[Estimated_PID_IAE, Estimated_PID_ISE, Estimated_PID_ITAE] = get_error_index('../../Figures/Plots/Fig/Tanque2/Valores_Estimados/ctr_pid_val_nosso_tank2.fig');

%%      Mudando_Ref
[Estimated_ChangeRef_I_PD_IAE, Estimated_ChangeRef_I_PD_ISE, Estimated_ChangeRef_I_PD_ITAE] = get_error_index('../../Figures/Plots/Fig/Tanque2/Valores_Estimados/Mudando_Ref/ctr_i-pd_val_nosso_tanque2.fig');
[Estimated_ChangeRef_PI_D_IAE, Estimated_ChangeRef_PI_D_ISE, Estimated_ChangeRef_PI_D_ITAE] = get_error_index('../../Figures/Plots/Fig/Tanque2/Valores_Estimados/Mudando_Ref/ctr_pi-d_val_nosso_tanque2.fig');
[Estimated_ChangeRef_PID_IAE, Estimated_ChangeRef_PID_ISE, Estimated_ChangeRef_PID_ITAE] = get_error_index('../../Figures/Plots/Fig/Tanque2/Valores_Estimados/Mudando_Ref/ctr_pid_val_nosso_tanque2.fig');

%% Valores_Icaro
[Icaro_I_PD_IAE, Icaro_I_PD_ISE, Icaro_I_PD_ITAE] = get_error_index('../../Figures/Plots/Fig/Tanque2/Valores_Icaro/ctr_i-pd_val_icaro_tank2.fig');
[Icaro_P_IAE, Icaro_P_ISE, Icaro_P_ITAE] = get_error_index('../../Figures/Plots/Fig/Tanque2/Valores_Icaro/ctr_p_val_icaro_tank2.fig');
[Icaro_PD_IAE, Icaro_PD_ISE, Icaro_PD_ITAE] = get_error_index('../../Figures/Plots/Fig/Tanque2/Valores_Icaro/ctr_pd_val_icaro_tank2.fig');
[Icaro_PI_D_IAE, Icaro_PI_D_ISE, Icaro_PI_D_ITAE] = get_error_index('../../Figures/Plots/Fig/Tanque2/Valores_Icaro/ctr_pi-d_val_icaro_tank2.fig');
[Icaro_PI_IAE, Icaro_PI_ISE, Icaro_PI_ITAE] = get_error_index('../../Figures/Plots/Fig/Tanque2/Valores_Icaro/ctr_pi_val_icaro_tank2.fig');
[Icaro_PID_IAE, Icaro_PID_ISE, Icaro_PID_ITAE] = get_error_index('../../Figures/Plots/Fig/Tanque2/Valores_Icaro/ctr_pid_val_icaro_tank2.fig');

%%      Mudando_Ref
[Icaro_ChangeRef_I_PD_IAE, Icaro_ChangeRef_I_PD_ISE, Icaro_ChangeRef_I_PD_ITAE] = get_error_index('../../Figures/Plots/Fig/Tanque2/Valores_Icaro/Mudando_Ref/ctr_i-pd_val_icaro_tanque2.fig');
[Icaro_ChangeRef_PI_D_IAE, Icaro_ChangeRef_PI_D_ISE, Icaro_ChangeRef_PI_D_ITAE] = get_error_index('../../Figures/Plots/Fig/Tanque2/Valores_Icaro/Mudando_Ref/ctr_pi-d_val_icaro_tanque2.fig');
[Icaro_ChangeRef_PID_IAE, Icaro_ChangeRef_PID_ISE, Icaro_ChangeRef_PID_ITAE] = get_error_index('../../Figures/Plots/Fig/Tanque2/Valores_Icaro/Mudando_Ref/ctr_pid_val_icaro_tanque2.fig');

save('../../Data/Errors/tanque2_errors.mat')
