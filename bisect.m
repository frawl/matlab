%Program 1.1 Bisection Method
%Computes approximate solution of f(x)=0
%Input: inline function f; a,b such that f(a)*f(b)<0, 
%     and tolerance tol
%Output: Approximate solution xc
function xc = bisect(f,a,b,tol)
fa=f(a);
fb=f(b);
k = 0;
while (b-a)/2>tol
  c=(a+b)/2;
  fc=f(c);
  if fc == 0             
    break
  end
  if sign(fc)*sign(fa)<0  
    b=c;fb=fc;
  else                    
    a=c;fa=fc;
  end
end
xc=(a+b)/2;   