function y = seno(counter, T, offset, A)

%counter = cast(counter, 'double');

y = A*sin(counter*2*pi/T) + offset;
