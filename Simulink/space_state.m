A = [-0.5783 0; 0.5783 -0.5783]
B = [0.7416; 0]
C = [0 1]

Cm = [B A*B]
Om = [C; C*A]

rank(Cm)
rank(Om)

G = eps^(A*0.1)
syms t
H = int(eps^(A*t)*B, t, 0, 0.1)

Wo = [C; C*G]

qc = G^2 + 16.0796*G + 65.6384*eye(2)
L = qc*inv(W0)*[0; 1]