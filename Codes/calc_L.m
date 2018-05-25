function L = calc_L(angles_, mags_)

G = [0.9942 0; 0.0057 0.9942];
C = [0 1];

Wo = [C; C*G];

angles_ = angles_*(pi/180);

p1 = complex(pol2cart(angles_(1), mags_(1)));
p2 = complex(pol2cart(angles_(2), mags_(2)));

a1 = real(-(p1+p2));
a2 = real(p1*p2);

qc = G^2 + a1*G + a2*eye(2);
invWo = inv(Wo);
L = qc*invWo*[0; 1];

end