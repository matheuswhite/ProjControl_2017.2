function y = sel_mesh(mesh, a_close, a_open)
%#codegen

if(mesh == 1)
    y = a_open;
else
    y = a_close;
end
