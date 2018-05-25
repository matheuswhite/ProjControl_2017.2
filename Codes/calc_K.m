function K = calc_K(angles_, mags_)

 G = [0.9942 0; 0.0057 0.9942];
 H = [0.0739; 0.0002];
 C = [0 1];
 D = 0;
  
 G_est = [G H; 0 0 0];
 H_est = [0; 0; 1];
 
 angles_ = angles_*(pi/180);
 p1 = complex(pol2cart(angles_(1), mags_(1)));
 p2 = complex(pol2cart(angles_(2), mags_(2)));
 p3 = complex(pol2cart(angles_(3), mags_(3)));
 
 Wc = [H_est G_est*H_est G_est^2*H_est];
 qc = G_est^3 + real(p1+p2+p3)*G_est^2 + real((p1+p2)*p3+p1*p2)*G_est + real(p1*p2*p3)*eye(3);
 K_est = [0 0 1]*inv(Wc)*qc;
 
 K = (K_est+[0 0 1])*[G-eye(2) H;C*G C*H];
 %det(z*eye(3) - (G_big - H_big*K))

end