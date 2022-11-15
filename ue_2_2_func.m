A1 = [4,3,-3;
     -2,4,7;
     -3,-4,-5]

A2 = [4,-3,-3;
    -4,3,7;
    -3,-4,-5]

ergeb = [2;
    7
    -15]

viktor = simpleSolve(A2,ergeb)
test = A2*viktor

function viktor = simpleSolve(A,b)
n = 3
for j=1:n-1
    L = eye(3)
    pivot = A(j,j)
    if pivot == 0
        buffer_mat = A(j,:)
        A(j,:) = A(j+1,:)
        A(j+1,:) = buffer_mat
        
        buffer_vec = b(j)
        b(j) = b(j+1)
        b(j+1) = buffer_vec
    end
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
