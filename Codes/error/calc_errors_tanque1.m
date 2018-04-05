clear
%% Tanque1
%% Valores_Estimados
[Estimated_I_PD_IAE, Estimated_I_PD_ISE, Estimated_I_PD_ITAE] = get_error_index('../../Figures/Plots/Fig/Tanque1/Valores_Estimados/ctr_i-pd_nosso_tanque.fig');
[Estimated_P_IAE, Estimated_P_ISE, Estimated_P_ITAE] = get_error_index('../../Figures/Plots/Fig/Tanque1/Valores_Estimados/ctr_p_nosso_tanque.fig');
[Estimated_PD_IAE, Estimated_PD_ISE, Estimated_PD_ITAE] = get_error_index('../../Figures/Plots/Fig/Tanque1/Valores_Estimados/ctr_pd_nosso_tanque.fig');
[Estimated_PI_D_IAE, Estimated_PI_D_ISE, Estimated_PI_D_ITAE] = get_error_index('../../Figures/Plots/Fig/Tanque1/Valores_Estimados/ctr_pi-d_nosso_tanque.fig');
[Estimated_PI_IAE, Estimated_PI_ISE, Estimated_PI_ITAE] = get_error_index('../../Figures/Plots/Fig/Tanque1/Valores_Estimados/ctr_pi_nosso_tanque.fig');
[Estimated_PID_IAE, Estimated_PID_ISE, Estimated_PID_ITAE] = get_error_index('../../Figures/Plots/Fig/Tanque1/Valores_Estimados/ctr_pid_nosso_tanque.fig');

%%      Mudando_Ref
[Estimated_ChangeRef_I_PD_IAE, Estimated_ChangeRef_I_PD_ISE, Estimated_ChangeRef_I_PD_ITAE] = get_error_index('../../Figures/Plots/Fig/Tanque1/Valores_Estimados/Mudando_Ref/ctr_i-pd_nosso_tanque.fig');
[Estimated_ChangeRef_PI_D_IAE, Estimated_ChangeRef_PI_D_ISE, Estimated_ChangeRef_PI_D_ITAE] = get_error_index('../../Figures/Plots/Fig/Tanque1/Valores_Estimados/Mudando_Ref/ctr_pi-d_nosso_tanque.fig');
[Estimated_ChangeRef_PID_IAE, Estimated_ChangeRef_PID_ISE, Estimated_ChangeRef_PID_ITAE] = get_error_index('../../Figures/Plots/Fig/Tanque1/Valores_Estimados/Mudando_Ref/ctr_pid_nosso_tanque.fig');

%% Valores_Icaro
[Icaro_I_PD_IAE, Icaro_I_PD_ISE, Icaro_I_PD_ITAE] = get_error_index('../../Figures/Plots/Fig/Tanque1/Valores_Icaro/ctr_i-pd_val_icaro_tanque.fig');
[Icaro_P_IAE, Icaro_P_ISE, Icaro_P_ITAE] = get_error_index('../../Figures/Plots/Fig/Tanque1/Valores_Icaro/ctr_p_val_icaro_tanque.fig');
[Icaro_PD_IAE, Icaro_PD_ISE, Icaro_PD_ITAE] = get_error_index('../../Figures/Plots/Fig/Tanque1/Valores_Icaro/ctr_pd_val_icaro_tanque.fig');
[Icaro_PI_D_IAE, Icaro_PI_D_ISE, Icaro_PI_D_ITAE] = get_error_index('../../Figures/Plots/Fig/Tanque1/Valores_Icaro/ctr_pi-d_val_icaro_tanque.fig');
[Icaro_PI_IAE, Icaro_PI_ISE, Icaro_PI_ITAE] = get_error_index('../../Figures/Plots/Fig/Tanque1/Valores_Icaro/ctr_pi_val_icaro_tanque.fig');
[Icaro_PID_IAE, Icaro_PID_ISE, Icaro_PID_ITAE] = get_error_index('../../Figures/Plots/Fig/Tanque1/Valores_Icaro/ctr_pid_val_icaro_tanque.fig');

%%      Mudando_Ref
[Icaro_ChangeRef_I_PD_IAE, Icaro_ChangeRef_I_PD_ISE, Icaro_ChangeRef_I_PD_ITAE] = get_error_index('../../Figures/Plots/Fig/Tanque1/Valores_Icaro/Mudando_Ref/ctr_i-pd_val_icaro_tanque.fig');
[Icaro_ChangeRef_PI_D_IAE, Icaro_ChangeRef_PI_D_ISE, Icaro_ChangeRef_PI_D_ITAE] = get_error_index('../../Figures/Plots/Fig/Tanque1/Valores_Icaro/Mudando_Ref/ctr_pi-d_val_icaro_tanque.fig');
[Icaro_ChangeRef_PID_IAE, Icaro_ChangeRef_PID_ISE, Icaro_ChangeRef_PID_ITAE] = get_error_index('../../Figures/Plots/Fig/Tanque1/Valores_Icaro/Mudando_Ref/ctr_pid_val_icaro_tanque.fig');

%% Valores_ZN
[ZN_P_IAE, ZN_P_ISE, ZN_P_ITAE] = get_error_index('../../Figures/Plots/Fig/Tanque1/Valores_ZN/ctr_p_val_zn_tanque.fig');
[ZN_PI_IAE, ZN_PI_ISE, ZN_PI_ITAE] = get_error_index('../../Figures/Plots/Fig/Tanque1/Valores_ZN/ctr_pi_val_zn_tanque.fig');
[ZN_PID_IAE, ZN_PID_ISE, ZN_PID_ITAE] = get_error_index('../../Figures/Plots/Fig/Tanque1/Valores_ZN/ctr_pid_val_zn_tanque.fig');

%%      Mudando_Ref
[ZN_ChangeRef_PID_IAE, ZN_ChangeRef_PID_ISE, ZN_ChangeRef_PID_ITAE] = get_error_index('../../Figures/Plots/Fig/Tanque1/Valores_ZN/Mudando_Ref/ctr_pid_val_zn_tanque.fig');

save('../../Data/Errors/tanque1_errors.mat')
