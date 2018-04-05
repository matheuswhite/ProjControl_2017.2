function [IAE, ISE, ITAE] = get_error_index(file, ref)

[t, e] = get_error(file, ref);
IAE = trapz(abs(e));
ISE = trapz(e.*e);
ITAE = trapz(t.*e);

end