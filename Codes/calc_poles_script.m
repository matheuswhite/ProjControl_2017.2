L = [0; 0];

b1 = L(2, 1) - 1.9825;
b2 = (L(1, 1) - 173.4035 - b1*174.4211)/172.4386;

delta = b1^2 - 4*b2;

p21 = (-b1 + sqrt(delta))/2; 
p22 = (-b1 - sqrt(delta))/2;

p1 = b2/p21;

poles = [p1 p21 p22];
angles = angle(poles)
mags = abs(poles)