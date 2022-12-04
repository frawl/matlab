% function to find the roots of given f(x) using bisection method 
% if 'a' and 'b' are two guess values , and f(a)*f(b)<0
% then c=(a+b)/2 , f(c) 
% if fa*fc<0
% b=c else a=c 
function [c] = bisection(f,a,b,tol)
i=0;
fa =feval(f,a);
fb=feval(f,b);
if fa*fb>0
    disp('fa and fb must have different signs i.e fa*fb<0')
    disp( ' root doesnt lie in between a and b')
    return 
end 
disp('iter    a      c=(a+b)/2       b           fa         fb          fc      error(a-b)') 
disp('-----------------------------------------------------------------------------------')
while fa*fb<0 
    i=i+1;
    c=(a+b)/2;
    fc=feval(f,c);
    if fc==0
        disp(['root = ' num2str(fc)])
    end
    error=(a-b);
    fprintf('%i \t %.4f \t %.4f \t %.4f \t %.4f \t %.4f \t %.4f \t %.4f  \n',i-1,a,c,b,fa,fb,fc,error) 
    if fa*fc<0
        b=c;
        fb=fc;
    else 
        a=c;
        fa=fc;
    end
    if abs(error)<tol
        break
    end
   
end 
disp(['root = ' num2str(c) ' found in  ' num2str(i) ' itterations'])
disp(['with approximate tolerance of ' num2str(tol)])