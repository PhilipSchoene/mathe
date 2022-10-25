% stabilisiert ue1 6

An = 2*sqrt(2) % start mit A2

y = [2*sqrt(2)]
wert = [2]
deviation = [abs(y(1)-pi)]
schranke = [pi^3/(6*4^1)]

for n = 2:30
    y = [ y 2^n*sqrt(2*(y(end)/2^n)^2 / (1+sqrt(1-(y(end)/2^n)^2))) ]
    wert = [wert n+1]
    deviation = [deviation abs(y(end)-pi)] % -pi^3/(6*4^(n+1))]
    schranke = [schranke pi^3/(6*4^(n))]
end

st = 5

plot(wert,y)

plot(wert(st:end), log(deviation(st:end)))
hold on
plot(wert(st:end), log(schranke(st:end)))
hold off
