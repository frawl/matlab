i = (1:10)';
x =10.^(-i);
E1 = (1-sec(x))./((tan(x)).^2);
E2 = -(1./(1+sec(x)));
table( x, E1 , E2)


E3 = (1-(1-x).^3)./(x);
E4 = (3 - 3*x - x.^3);


