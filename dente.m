function y = dente(T, offset, A)

persistent counter_d;

if isempty(counter_d)
   counter_d = 0; 
end


y = counter_d*A/(10*T) + offset;

counter_d = counter_d + 1;

if (counter_d > T*10)
   counter_d = 0;
end
