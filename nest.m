function y = nest(d, c, x, b)
if nargin < 4, b = zeros(d, 1);
end
y = c(d + 1);
for j = d : -1 : 1
y = y.*(x -b(j)) + c(j);
end
