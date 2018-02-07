function y = fcn(u,j)
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
if(u < 0 & j < 2)
    u = 0;
end

%Trava de transbordamento
if(j >= h_max - 1.0  & j < h_max - 0.75)
    u = 0.95*u;
elseif(j >= h_max - 0.75 & j < h_max - 0.5)
    u = 0.93*u;
elseif(j >= h_max - 0.5 & j < h_max - 0.25)
    u = 0.91*u;
elseif(j >= h_max - 0.25 & j < h_max)
    u = 0.88*u;
elseif(j >= h_max)
    u = 0;
end
    
y = u;