% LR-Zerlegung 
% implementiere die L-Matrizen direkt als inverse durch -1 der neuen Einträge
% Iteration zur Lösung mit der gesamten Matrix
 
A = [4,3,-3;
     -2,4,7;
     -3,-4,-5]

test = A

b = [2;
      7;
      -15]
n = 3

for j=1:n-1
    L = eye(3)
    pivot = A(j,j)
    for i=j+1:n
        L(i,j) = - A(i,j)/pivot
    end
    A = L*A
    b = L*b
end

% Iteration 

%for i=0:n-2
z = b(3)/A(3,3)
y = (b(2) - A(2,3)*z) / A(2,2)
x = (b(1) - A(1,3)*z - A(1,2)*y) / A(1,1)

vector=[x;
    y;
    z]

test*vector

% test erfolgreich
 
 
 
