function T=Ctrap(f,a,b,n)

%Approximate the intergral of F from a to b using composite Trapezoidal
%rule with n subintervals

h=(b-a)/n;

T=0;
for i=1:n-1
    x=a+i*h;
    T=T+f(x);
end

T=h*(f(a)+f(b))/2+h*T;
end
