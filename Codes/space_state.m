A = [-0.0584 0; 0.0584 -0.0584];
B = [0.7416; 0];
C = [0 1];

Cm = [B A*B];
Om = [C; C*A];

r_Cm = rank(Cm);
r_Om = rank(Om);

G = eps^(A*0.1);
syms t;
H = integral(func, 0, 0.1);