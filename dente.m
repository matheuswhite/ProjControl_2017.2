function y = dente(t, T, offset, A)

y = A*sawtooth(t*2*pi/T) + offset;
