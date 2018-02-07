function y = mux(degrau, seno, quadrada, dente, aleatoria, sel)

switch sel
    case 1
        y = seno;
    case 2
        y = degrau;
    case 3
        y = dente;
    case 4
        y = quadrada;
    case 5
        y = aleatoria;
end
