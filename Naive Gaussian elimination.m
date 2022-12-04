for j=1:n-1
  for i=j+1:n
    if abs(a(j,j))< eps; error('zero pivot encountered'); end
    mult = a(i,j)/a(j,j);
    for k = j+1:n
      a(i,k) = a(i,k) - mult*a(j,k);
    end
    b(i) = b(i) - mult*b(j);
  end
end
for i = n:-1:1
  for j = i+1:n
    b(i) = b(i) - a(i,j)*x(j);
  end
  x(i) = b(i)/a(i,i);
end
