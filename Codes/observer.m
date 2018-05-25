function [y_estimado, x_estimado] = observer(u, y, L)

G = [0.9942 0; 0.0057 0.9942];
H = [0.0739; 0.0002];
C = [0 1];

persistent x_next

if(isempty(x_next))
    x_next = [0; y];
end

x_estimado = x_next;
y_estimado = C*x_estimado;
x_next = G*x_estimado + L*(y-y_estimado) + H*u;

% persistent x_old
% persistent y_old
% 
% if(isempty(x_old))
%     x_old = [0; 0];
% end
% 
% if isempty(y_old)
%    y_old = 0; 
% end
% 
% x_estimado = G*x_old + H*u + L(y-y_old);
% y_estimado = C*x_old;
% 
% x_old = x_estimado;
% y_old = y;

end