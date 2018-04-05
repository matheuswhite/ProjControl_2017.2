% Função de Plot para altura do Tanque
plot(tank1level(:,1), tank1level(:,2))
axis([0 60 0 16])
xlabel('Tempo (s)')
ylabel('Altura do Tanque 1')
%%
% Função de plot para os valores PID
plot(PID(:,1), PID(:,2), 'g', PID(:,1), PID(:,3), 'r', PID(:,1), PID(:,4), 'b')
axis([0 60 0 100])
legend('Ação Proporcional', 'Ação Integral', 'Ação Derivativa')
xlabel('Tempo (s)')
ylabel('Altura do Tanque 1')