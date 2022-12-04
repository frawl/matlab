function s=simp1(f,a,b,n)

%n
h=(b-a)/n;
I0= f(a)+ f(b);
I1=0;
I2=0;
for i=1:2:n-1
    I1 = I1 + f(a+i*h);
end
for i=1:2:n-1
    I2 = I2+ f(a+i*h);
end
s=h*(I0+4*I1+2*I2)/3;
end
