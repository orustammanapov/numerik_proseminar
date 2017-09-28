function theta = FrancisAlgorithmus(A)

[U,R] = hess(A);
accept = norm(A)*1e-20;
k = size(A,1);
theta = zeros(k,1);

while k>2
  [Q,R(1:k,1:k)] = qr(R(1:k,1:k));
  R(1:k,1:k) = R(1:k,1:k)*Q;
  if abs(R(k,k-1)) < accept
    theta(k) = R(k,k);
    k = k-1;
  elseif abs(R(k-1,k-2)) < accept
    theta(k-1:k) = eig(R(k-1:k,k-1:k));
    k = k-2;
  end
end
theta(1:k) = eig(R(1:k,1:k));
