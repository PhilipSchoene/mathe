
% loops in Matlab langsamer als vektoroperationen

An = 2*sqrt(2) % start mit A2

x = []
wert = []

for n = 2:20
    Am = 2^n*sqrt(2*(1-sqrt(1-(An/(2^n))^2)))
    An = Am
    fprintf("A%i ist %d \n", n, Am)
    x = [x n+1]
    wert = [wert Am]
end

plot(x, wert)
