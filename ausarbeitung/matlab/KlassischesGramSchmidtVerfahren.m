function [Q,R] = KlassischesGramSchmidtVerfahren(A)

[m,n] = size(A);
Q = zeros(m,n);
R = zeros(n);
for k = 1:n
  R(1:k-1,k) = Q(1:m,1:k-1)'*A(1:m,k);
  v = A(1:m,k)-Q(1:m,1:k-1)*R(1:k-1,k);
  R(k,k) = norm(v);
  Q(1:m,k) = v/R(k,k);
end
