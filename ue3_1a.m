A = [2,-1,1;
    3,3,9;
    3,3,5]

ergeb = [-1;0;4]

viktor = simpleSolve(A,ergeb)
test = A*viktor

function viktor = simpleSolve(A,b)
n = 3
for j=1:n-1
    L = eye(n)
    pivot = A(j,j)
    for i=j+1:n
        L(i,j) = - A(i,j)/pivot
    end
    A = L*A
    b = L*b
end

% Iteration 
z = b(3)/A(3,3)
y = (b(2) - A(2,3)*z) / A(2,2)
x = (b(1) - A(1,3)*z - A(1,2)*y) / A(1,1)

viktor=[x;
    y;
    z]
end
