function y = aleatoria(T_min, T_max, A_min, A_max, offset)

T_now = T_min + (T_max - T_min)*rand;
A_now = A_min + (A_max - A_min)*rand + offset;

pause(T_now)

y = A_now;
