n = size(A)
%Notiz für mich: haben hier i und j vertauscht
for i=1:n-1
for j=1+i:n
a = A(j,i)/A(i,i)
A(j,i:n) = A(j,i:n)- a*A(i,i:n)
A(j,i) = a
end
end
