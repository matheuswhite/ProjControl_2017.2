function [IAE, ISE, ITAE] = get_error_index(file)

[t, e] = get_error(file);
IAE = trapz(abs(e));
ISE = trapz(e.*e);
ITAE = trapz(t.*e);

end