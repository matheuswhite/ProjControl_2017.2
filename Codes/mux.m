function y = mux(degrau, seno, quadrada, dente, aleatoria, sel)

switch sel
    case 1
        y = degrau;
    case 2
        y = seno;
    case 3
        y = quadrada;
    case 4
        y = dente;
    case 5
        y = aleatoria;
    otherwise
        y = 0;
end
