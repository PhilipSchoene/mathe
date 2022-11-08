M = [4,-3,-3;
    -2,4,7;
    -3,-4,-5]

b = [2;
    7;
    -15]

Mi = inv(M)

ergebnis = Mi*b 

ergebnis % Ergebnis vektor
% 2 in v1 Richtung, 1 in v2 Richtung und 1 in v3 Richtung
norm(ergebnis,1)*10000 % Kosten
% Gesamtkosten 40000 Euro
