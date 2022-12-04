function r = bisect_class1(f,a,b,tol,nmax)
% bisection method
% find a root r of f(x) 
%
% input
%   f      given function defined by @(x)
%   a,b    end points of the initial interval
%   tol    tolerance, stop when length of the interval less than tol
%   nmax   maximum number of steps allowed
% output
%   r      root, r=(b-a)/2 when |b-a|<tol
% plot the function f to make sure int is the right interval to start.
fplot(f, [a,b])
fa= f(a);
fb=f(b);
% initialize function evaluation counter
count = 0;
 
% check for opposite signs
if (sign(fa) == sign(fb))
  fprintf('\n choose a different interval \n'); return
end
fprintf('\neval                    x          f(x)\n');
fprintf(  '----    -----------------   -----------\n');
fprintf(  '       %18.16g %13.6g\n', a, fa);
fprintf(  '       %18.16g %13.6g\n', b, fb);
while (count <= nmax)
  % compute midpoint and evaluate function there
    r = (a +  b)/2; fr = f(r);
    fprintf('%4d   %18.16g %13.6g\n',count,r,fr);
    count = count+1;
   
    if abs(fr) < tol | (b-a)/2 < tol
        break
    end
        
  % bisect the interval: take the next interval and call it (a,b) again
    if ( sign(fa) == sign(fr) )
      a = r;
      fa = fr;
    else
      b = r;
      fb = fr;
    end
end 