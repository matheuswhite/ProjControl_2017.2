function y = aleatoria(T_min, T_max, A_min, A_max, offset)

persistent T_now;
persistent A_now;
persistent counter_a;

if isempty(counter_a)
    T_now = T_min + (T_max - T_min)*rand;
    A_now = A_min + (A_max - A_min)*rand + offset;
    counter_a = 0;
end

counter_a = counter_a + 1;

y = A_now;

if (counter_a >= T_now*10)
    T_now = T_min + (T_max - T_min)*rand;
    A_now = A_min + (A_max - A_min)*rand + offset;
    counter_a = 0;
end
