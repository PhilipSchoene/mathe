A = [1,2,-1;
    1,2,3;
    2,-1,4]
B = A
n=3
Lalles = eye(n)

for j=1:n-1
    per = eye(n)
    L = eye(n)
    pivot = A(j,j)
    if pivot == 0
        buffer_A = A(j,:)
        A(j,:) = A(j+1,:)
        A(j+1,:) = buffer_A
        
        buffer_per = per(j,:)
        per(j,:) = per(j+1,:)
        per(j+1,:) = buffer_per
    end
    pivot = A(j,j)
    for i=j+1:n
        L(i,j) = - A(i,j)/pivot
    end
    A = L*A
    Lalles = L*per*Lalles
end
Lalles = inv(Lalles)
R=A
C = per*B
D = Lalles*R
