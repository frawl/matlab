% Usage: r = compmidp(f,a,b,n)
% Composite Midpoint Rule (1-point open Newton-Cotes)
%
% Input:
% f - Matlab inline function 
% a,b - integration interval
% n - number of subintervals (panels)
%
% Output:
% r - computed value of the integral


function r = midp(f,a,b,n)
h = (b - a) / n;
x = a + h * 0.5;
r = 0;
for i=1:n
    r = r + f(x);
    x = x + h;
end;
r = r * h;