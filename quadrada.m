function y = quadrada(T, offset, A)

persistent counter_q;

if isempty(counter_q)
   counter_q = 0; 
end

counter_q = counter_q + 1;

if (counter_q <= 5*T)
    y = offset;
elseif (counter_q > 5*T)
    y = A + offset;
else
    y = .5;
end

if (counter_q >= 10*T)
   counter_q = 0; 
end
