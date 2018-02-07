function y = fcn(h, u)
%#codegen
h_max = 30;

%Trava de tensão
if(u < -4)
    u = -4;
end
if(u > 4)
    u = 4;
end

%Trava pra não sugar ar
if(u < 0 & h < 2)
    u = 0;
end

%Trava de transbordamento
if(h >= h_max - 1.0  & h < h_max - 0.75)
    u = 0.95*u;
elseif(h >= h_max - 0.75 & h < h_max - 0.5)
    u = 0.93*u;
elseif(h >= h_max - 0.5 & h < h_max - 0.25)
    u = 0.91*u;
elseif(h >= h_max - 0.25 & h < h_max)
    u = 0.88*u;
elseif(h >= h_max)
    u = 0;
end
    
y = u;
