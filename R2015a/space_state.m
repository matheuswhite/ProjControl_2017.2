Km = 3.3;
A1 = 4.45;
A2 = A1;
a1 = 0.45;
a2 = a1;
L20 = 15;
L10 = ((a2^2)/(a1^2))*L20;
g = 9.81;

A = [-(a1/A1)*sqrt(g/(2*L10)) 0; (a1/A2)*sqrt(g/(2*L10)) -(a2/A2)*sqrt(g/(2*L20))]
B = [Km/A1; 0]
C = [0 1]

Cm = [B A*B]
Om = [C; C*A]

rank(Cm)
rank(Om)

sys = c2d(ss(A, B, C, 0), 0.1);
G = sys.a
H = sys.b

Wo = [C; C*G]
